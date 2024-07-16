"""Workflow for counting barcodes

  :Author: Arvind Rasi Subramaniam
  :Date: 10 Jan 2023
  :Edited: Katharine Chen
  :Date: 15 June 2023
"""

# useful libraries
import os
import pandas as pd
import re
import itertools as it


# configuration specific to this analysis
sample_annotations = pd.read_table("../annotations/sample_annotations.csv", 
                                   sep=",", comment = "#", dtype=object)
#print(sample_annotations['sample_name'])
sra_annotations = pd.read_table("../../../../annotations/sra_annotations.tsv")


# these rules are run locally
localrules: all

# Rules ----------------------------------------------------------------------

rule all:
  """List of all files we want at the end
  """
  input:
    raw_barcode_counts = expand('../data/raw_barcode_counts/{sample_name}.csv', 
      sample_name=sample_annotations['sample_name']),
    linked_barcode_counts = expand('../data/linked_barcode_counts/{sample_name}.csv', 
      sample_name=sample_annotations['sample_name']),


def get_fastq_file_for_sample_name(wildcards):
  """This function gets the SRR file based on the sample_id in `sample_annotations`
  """
  srr = sample_annotations.loc[sample_annotations['sample_name'] == wildcards.sample_name, 'srr'].item()
  #srr = sra_annotations.loc[sra_annotations['sample_id'] == sample_id, 'srr'].item()
  filename = f'../../../../data/fastq/{srr}.fastq'
  return filename

rule count:
  """Count each barcode
  """
  input: get_fastq_file_for_sample_name
  output: '../data/raw_barcode_counts/{sample_name}.csv'
  log: '../data/raw_barcode_counts/{sample_name}.log'
  params:
    barcode_read = lambda wildcards: sample_annotations.loc[sample_annotations['sample_name'] == wildcards.sample_name, 'barcode_read'].tolist()[0],
    barcode_start = lambda wildcards: sample_annotations.loc[sample_annotations['sample_name'] == wildcards.sample_name, 'barcode_start'].tolist()[0],
    barcode_length = lambda wildcards: sample_annotations.loc[sample_annotations['sample_name'] == wildcards.sample_name, 'barcode_length'].tolist()[0],
  container: 'docker://ghcr.io/rasilab/python:1.0.0'
  shell: 
    """
    set +o pipefail
    export TMPDIR=$PWD
    awk -v OFS=, '
    BEGIN {{
      print "barcode","counts";
    }}
    NR%4 == 2 {{
      counts[substr(${params.barcode_read}, {params.barcode_start}, {params.barcode_length})]++
    }}
    END {{
      for (barcode in counts) print barcode, counts[barcode] | "sort -k2nr -t,"
    }}
    ' \
    {input} 1> {output} 2> {log}
    """


rule subset_to_linked_barcodes:
  """Subset barcode counts to only those barcodes identified in linkage sequencing
  """
  input:
    barcode_count_file = '../data/raw_barcode_counts/{sample_name}.csv',
    barcode_linkage_file = '../../8xdicodon_linkage/data/filtered_barcodes/yeast_cyto_linkage.csv'
  output:
    linked_barcode_count_file = '../data/linked_barcode_counts/{sample_name}.csv'
  params:
    # column containing barcode sequence in linkage file
    barcode_col = 3
  log: '../data/linked_barcode_counts/{sample_name}.log'
  container: 'docker://ghcr.io/rasilab/python:1.0.0'
  shell:
    """
    awk -F, -v OFS=, '
      NR == 1 {{
        print "barcode_count",$0
      }};
      # read in linkage file
      NR == FNR && NR > 1 {{
        linkages[${params.barcode_col}] = $0;
        next
      }};
      # write barcode count along with insert-barcode linkage data
      {{
        if ($1 in linkages) print $2, linkages[$1]
      }}
      ' \
      {input.barcode_linkage_file} {input.barcode_count_file} \
      1> {output.linked_barcode_count_file} 2> {log}
    """