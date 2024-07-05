---
title: Massively parallel identification of sequence motifs triggering ribosome-associated mRNA quality control
---

Katharine Y. Chen^1,2^, Heungwon Park^1^, Arvind Rasi Subramaniam^1,†^

^1^ Basic Sciences Division and Computational Biology Section of the Public
Health Sciences Division, Fred Hutchinson Cancer Center, Seattle, WA
98109, USA,
^2^ Molecular and Cellular Biology Program, University of Washington,
Seattle, WA 98195, USA 

^†^ Corresponding author: <rasi@fredhutch.org>

<!-- \pagenumbering{gobble} -->
\linenumbers

# Abstract{.unlisted .unnumbered}

Decay of mRNAs can be triggered by ribosome slowdown at stretches of rare codons or positively charged amino acids.
However, the full diversity of sequences that trigger co-translational mRNA decay is poorly understood.
To comprehensively identify sequence motifs that trigger mRNA decay, we use a massively parallel reporter assay to measure the effect of all possible combinations of codon pairs on mRNA levels in *S. cerevisiae*.
In addition to known mRNA-destabilizing sequences, we identify several dipeptide repeats whose translation reduces mRNA levels. 
These include combinations of positively charged and bulky residues, as well as proline-glycine and proline-aspartate dipeptide repeats.
Genetic deletion of the ribosome collision sensor Hel2 rescues the mRNA effects of these motifs, suggesting that they trigger ribosome slowdown and activate the ribosome-associated quality control (RQC) pathway.
Deep mutational scanning of an mRNA-destabilizing dipeptide repeat reveals a complex interplay between the charge, bulkiness, and location of amino acid residues in conferring mRNA instability. 
Finally, we show that the mRNA effects of codon pairs are predictive of the effects of endogenous sequences.
Our work highlights the complexity of sequence motifs driving co-translational mRNA decay in eukaryotes, and presents a high throughput approach to dissect their requirements at the codon level.


<!-- \begin{spacing}{0}
\setmainfont[Scale=0.9]{Helvetica}
\tableofcontents
\end{spacing} -->
<!-- \Begin{multicols}{2} -->
<!-- \multicollinenumbers -->

# Introduction

Translation and decay of mRNA are fundamental stages of gene expression whose interplay is crucial for determining steady-state protein levels in the cell.
The protein coding region of mRNA has been recently recognized as an important determinant of mRNA stability [@Hoof2011;@Shoemaker2012;@Presnyak2015;@Forrest2020;@Letzring2010;@Letzring2013;@Arthur2018;@Chandrasekaran2019;@Doma2006;@Simms2017].
Ribosome elongation rates can vary along the protein coding region, which is sensed by diverse regulatory factors to trigger mRNA decay [@Frischmeyer2002;@Ito-harashima2007;@Doma2006;@Tsuboi2012;@Tesina2020;@Lu2008;@Chandrasekaran2019;@Arthur2018;@Meydan2021;@Koutmou2015;@Simms2017;@Simms2017a;@Guydosh2017;@Park2019].
Dysregulation of mRNA decay pathways has been linked to neurological diseases, autoinflammatory diseases, and cancer [@Shu2020;@Martin2019;@DeKeersmaecker2013;@Yang2022;@Tuck2020;@Yang2022a].

Several motifs in the protein coding region of eukaryotic mRNAs have been associated with changes in mRNA stability [@Presnyak2015;@Forrest2020;@Doma2006;@Tsuboi2012;@Simms2017;@Letzring2013;@Frischmeyer2002;@Ito-harashima2007;@Burke2022;@Mizuno2021].
Non-optimal codons decrease ribosome elongation rates and trigger Not5-dependent mRNA deadenylation and decay [@Presnyak2015;@Buschauer2020;@Hanson2018a;@Absmeier2023].
Strong ribosome stalls caused by polybasic residues, poly-tryptophan sequences, and rare codon repeats trigger ribosome collisions and Hel2-dependent ribosome-associated mRNA quality control (henceforth RQC) [@Mizuno2021;@Park2019;@Simms2017;@Garzia2017;@Dorazio2019;@Guydosh2017;@Letzring2013;@Arthur2018].
Poly-proline sequences decrease ribosome elongation rate, but such slowdowns are thought to be resolved by eIF5A and not trigger mRNA quality control [@Gutierrez2013;@Pavlov2009].
Ribosome profiling studies have identified several dipeptide and tripeptide motifs that are enriched at sites of ribosome stalls and collisions [@Han2020;@Sabi2017;@Ingolia2011;@Meydan2020].
However, whether such motifs are sufficient to trigger mRNA quality control is not known.
Ribosome stalling motifs in endogenous protein coding sequences often depend on a complex combination of amino acid residues in the nascent peptide [@Matsuo2020;@Yanagitani2011;@Nakatogawa2002;@Bhushan2011;@Shanmuganathan2019], and thus their relation to the simple repeat stalling sequences studied in reporter assays is not clear.

We recently developed a massively parallel reporter assay to identify coding sequence motifs triggering mRNA decay in human cells [@Burke2022].
Using this assay, we found that translation of a diverse set of dipeptide repeats composed of bulky and positively charged amino acids are sufficient to trigger mRNA decay in human cells.
Nevertheless, the molecular mechanism by which translation of these dipeptide repeats triggers mRNA decay in human cells remains unknown.
Further, the extent to which translation of bulky and positively charged residues serves as an evolutionarily conserved signal for mRNA decay in other eukaryotes is unclear.
Since co-translational mRNA decay pathways have been extensively studied in the budding yeast *S. cerevisiae* [@Sitron2020a;@Brandman2016;@Bengtson2010;@Dorazio2021;@Arthur2018], we sought to use this as an experimental model to dissect the molecular mechanism and sequence requirements of coding sequence-dependent mRNA decay.
By extending our massively parallel reporter assay from human cells to *S. cerevisiae*, we identify several mRNA-destabilizing dipeptide motifs including combinations of bulky and positively charged residues, as well as proline-glycine and proline-aspartic acid dipeptide repeats.
We define Hel2-dependent RQC as the major pathway regulating mRNA decay triggered by translation of these dipeptide repeats.
Using deep mutational scanning, we further characterize the biochemical requirements at the codon level for bulky and positively charged dipeptide repeats in triggering Hel2-dependent mRNA decay.
Together, our results highlight the diversity of coding sequence motifs triggering co-translational mRNA decay in *S.cerevisiae*, define the biochemical requirements for their mRNA-destabilizing effects, and reveal the extent of evolutionary conservation of these motifs across eukaryotes.

# Materials and Methods

## Parent vector construction
Plasmids constructed and used in this study are listed in table S1.
Oligonucleotides used in this study are listed in table S3.
Plasmid assembly was carried out using standard molecular biology techniques as described below.
All polymerase chain reaction (PCR) reactions were performed using Phusion polymerase (Thermo Fisher F530S) or Phusion Flash High-Fidelity PCR Master Mix (Thermo Fisher F548L) according to manufacturer's instructions. 
Restriction enzymes were obtained from Thermo Fisher and FastDigest (FD) variants were used when available.

The chrI-integrating parent vector pHPSC1120 used for this study was constructed from pHPSC417 used in our previous work [@Park2019].
In comparison to pHPSC417, pHPSC1120 contains an additional Illumina Read1 primer binding site and T7 promoter sequences for deep sequencing of inserts and barcode sequences and for in vitro transcription from genomic DNA, respectively.
The Illumina R1 sequencing primer binding and T7 promoter sequences were PCR-amplified using oHP558 as the forward primer, oHP530 as a bridge primer, and oHP529 as a reverse primer, and cloned into BamHI-linearized pHPSC417 using Gibson assembly.
The -1 frameshifted parent vector pHPSC1114 was also constructed from pHPSC417 using the same strategy as for pHPHS1120 but with a different forward primer oHP528 that incorporates the frameshift.
All plasmids were verified by Sanger sequencing.

## Variable oligo pool design

### Pool 1
Pool 1 includes the 8× dicodon library (4096 codon pair inserts) and the endogenous gene fragments library (1904 inserts).
The 8× dicodon library (Fig. [1](#figure-1)A) encodes all possible codon pair (6 nucleotide) combinations, for a total of 4096 codon pairs. 
Each codon pair is repeated eight times to create 48 nucleotide (nt) inserts.
The endogenous gene fragments library includes 1904 endogenous fragments, each 48 nt in length (Fig. [6](#figure-6)A).
Endogenous gene fragments were selected as 253 nt to 300 nt of each ORF.
Only ORFs designated as "Verified" by the Saccharomyces Genome Database (SGD) in the R64-1-1 release were included (\url{http://sgd-archive.yeastgenome.org/sequence/S288C_reference/genome_releases/}).
Every 2nd gene in descending order of RNA expression [@Weinberg2016] was included in this library to encompass a wide range of expression levels.
All 6000 inserts are flanked with the same 29 nt 5' homology arm and 24 nt 3' homology arm.
The oligo pool (oAS385) was ordered from Twist Biotechnologies.

### Pool 2
The FK~8~ deep mutational scanning library (Fig. [5](#figure-5)A) was constructed from a starting sequence composed of phenylalanine and lysine codons repeated eight times in tandem (48 nt inserts).
The phenylalanine codons TTT and TTC and the lysine codons AAA and AAG were used interchangeably throughout the insert to avoid producing a repetitive mRNA sequence.
At each of the 16 positions, an NNN sequence was used to randomize the codon.
The oligo pool (oKC224) was ordered as an oPool from Integrated DNA Technologies.

### Pool 3
Pool 3 includes various 8× codon pair repeats encoding dipeptides determined to be destabilizing in Fig. [3](#figure-3)C.
As in Pool 1, each codon pair is repeated eight times to create 48 nt inserts.
The oligo pool (oKC265) was ordered from Integrated DNA Technologies.

### Pool 4
Pool 4 includes various 8× codon pair repeats encoding dipeptides that were not destabilizing in the original screen.
As in Pool 1, each codon pair is repeated eight times to create 48 nt inserts.
The oligo pool of these negative control pairs (oKC147) was ordered from Integrated DNA Technologies.

## Plasmid library construction
For the 8× dicodon library, oligo pool 1 (described above) was PCR-amplified with oKC97 and oHP531.
For the -1 frameshifted 8× dicodon library, pool 1 was PCR-amplified with oHP532 and oHP531.
As described above, oHP531 encodes a 24 nt random barcode region, comprised of 8× VNN repeats.
Barcoded oligo pools were cloned into BamHI-linearized pHPSC1120 and pHPSC1114 by Gibson assembly.
Assembled plasmid pools were transformed at high efficiency into NEB 10-Beta *E. coli* cells, and plated as 1:10 serial dilutions.
500,000 colonies were scraped from plates for extraction in order to bottleneck the number of unique variants.

Pool 2 was PCR-amplified with oKC97 and oKC225 and cloned into BamHI-linearized pHPSC1120 by Gibson assembly.
The assembled plasmid pool was transformed at high efficiency into NEB 10-Beta *E. coli* cells.
70,000 colonies were scraped from plates for extraction in order to bottleneck the number of unique variants.

For the small 8× dicodon library in various RQC deletion strains (Fig. [S4](#figure-s4)A), oligo pool 3 and 4 (described above) were PCR-amplified individually with oKC97 and oHP531.
PCR products were pooled together at an equimolar ratio and cloned into BamHI-linearized pHPSC1120 by Gibson assembly.
The assembled plasmid pool was transformed at high efficiency into NEB 10-Beta *E. coli* cells.
10,000 colonies were scraped from different plates and extracted separately in order to keep the barcode and insert combinations unique between different plasmid libraries.

## Individual plasmid construction
To generate the *PGK1-YFP* reporters used for flow cytometry of individually selected codon pairs, the desired codon pair inserts were amplified using two rounds of PCR from a pooled plasmid template pHPSC1136 not used in this study.
Unique primers (oKC129-142) were used to amplify the six desired inserts.
Homology arms were added to the six amplified inserts using oKC97 and oKC123 primers.
Amplified inserts were cloned into BamHI-linearized pHPSC1120 by Gibson assembly to produce pHPSC1144, pHPSC1145, pHPSC1146, pHPSC1147, pHPSC1149, pHPSC1150 plasmids.
All individual plasmids were verified by Sanger sequencing.

To create the small barcoded pool for mRNA measurement validation (Fig. [S2](#figure-s2)A,E), oKC97 and oKC148 oligos were used to barcode and amplify inserts from the following plasmids (described above): pHPSC1144, pHPSC1145, pHPSC1146, pHPSC1147, pHPSC1149, pHPSC1150.
oKC148 encodes a 24 nt random barcode region, comprised of 8× VNN repeats. 
Barcoded inserts were then pooled at equimolar concentrations and cloned into BamHI-linearized pHPSC1120 by Gibson assembly.
The assembled plasmid pool was transformed at high efficiency into NEB 10-Beta *E. coli* cells.
2,000 colonies were scraped from plates for extraction in order to bottleneck the number of unique variants.
Two colonies were picked and Sanger sequenced to obtain the identity of the insert and barcode pair of the two spike-in plasmids, pHPSC1159-sc2 and pHPSC1159-sc5.

## Strain construction
All *S. cerevisiae* strains used in this study are listed in table S2.
Integration of pooled plasmids into the *S. cerevisiae* genome was performed by transforming 30–200 μg of NotI-linearized plasmid library into 1–5e9 cells according to the LiAc/SS carrier DNA/PEG method [@Gietz2007].
Following heat shock, cells were transferred into a 5x volume of a 1:1 solution of 20% dextrose and synthetic complete (SC) media lacking uracil with 2% dextrose (SCD-URA) and spun at 1850*g* for 5 minutes.
Cell pellets were gently resuspended in 100mL of fresh SCD-URA and allowed to recover overnight at 30˚C shaking at 200rpm.
After 20–24 hours, 1e9 cells were passaged into 100mL fresh SCD-URA and grown overnight at 30˚C shaking at 200rpm.
This process was repeated for a total of 72 hours of selection in SCD-URA before making glycerol stocks from saturated cultures.
Integration of individual constructs into the *S. cerevisiae* genome was performed by transforming 0.5–1.0µg of linearized plasmid according to the LiAc/SS carrier DNA/PEG method [@Gietz2007].
Single yeast colonies were selected on SCD agar plates lacking uracil after 48 to 72 hours growth at 30˚C.

## Harvesting pooled library cells
Glycerol stocks of cells containing pooled reporter strains were thawed and grown overnight in 20-50mL YEPD at starting OD~600~ between 0.1 and 0.5 at 30˚C with shaking at 200rpm.
The saturated cultures were diluted approximately 200-fold (for starting OD~600~ of 0.1) and spike-in strains (scKC190 and scKC191) were introduced into each culture at a concentration approximately the same as each library variant based on OD~600~ density.
Cultures were grown for 4–6 hours at 30˚C with shaking at 200rpm until mid-log phase (OD~600~ between 0.4-0.6), then transferred to ice-water baths.
Each culture was split into 50mL aliquots (approximately >=200 million cells) in pre-chilled conical tubes and spun down at 3000*g*, 4˚C, for 5 minutes.
The supernatant was removed and the cell pellets were flash-frozen in a dry ice-ethanol bath and stored at -80˚C.

## Harvesting glucose-depleted cells
Glycerol stocks of cells containing the pHPSC1142 pooled reporter library were thawed and grown overnight as described above.
Saturated cultures were diluted and spike-in strains (scKC190 and scKC191) were introduced as described above.
Cells were grown for 4 hours at 30˚C with shaking at 200rpm until OD~600~ of 0.4.
Cells were spun down at 3000rpm for 2 minutes and washed with 30mL H~2~O twice, then resuspended into YEP (no glucose).
Glucose-depleted cells were grown for 1 hour at 30˚C with shaking at 200rpm.
After 1 hour of growth, cells were harvested by spinning in 50mL pre-chilled tubes at 3000*g*, 4˚C, for 5 minutes.
The supernatant was removed and the cell pellets were flash-frozen in a dry ice-ethanol bath and stored at -80˚C.

## Harvesting pooled RQC deletion strains
Glycerol stocks of RQC deletion strains each containing one of the small 8× dicodon libraries (pHPSC1165-71) were thawed and grown overnight individually in 20-50mL YEPD at starting OD~600~ between 0.1 and 0.5 at 30˚C with shaking at 200rpm.
Saturated cultures were pooled together at 1:1 based on optical density measurements and diluted to OD~600~ of 0.1.
The pooled culture was grown to mid-log phase and harvested as described above.

## Library genomic DNA extraction
For genomic DNA extraction, between 400 million to 1.2 billion cells (two to six flash-frozen pellets) were lysed and extracted using the YeaStar Genomic DNA kit (Zymo 11-323), following the manufacturer's instructions, with 240µL YD digestion buffer and 10µL R-Zymolyase per pellet.
Extracted genomic DNA was sheared for 10 minutes (30 seconds on, 30 seconds off, on "High" setting) on ice using a Diagenode Bioruptor.
Sheared gDNA was cleaned using DNA Binding Buffer (Zymo ZD4004-1-L) and UPrep Spin Columns (Genesee Scientific 88-143).
Sheared and cleaned gDNA was then in vitro transcribed into RNA (denoted gRNA below and in analysis code) starting from the T7 promoter region in the insert cassette, similar to previous approaches [@Muller2020;@Burke2022], using the HiScribe T7 High Yield RNA Synthesis Kit (NEB E2040S).
Transcribed gRNA was cleaned using the RNA Clean and Concentrator kit (Zymo R1013).

## Library mRNA extraction
At least 200 million cells (one flash-frozen pellet) per sample was resuspended in 400µL Trizol (Thermo Fisher 15596-026) in a 1.5-ml tube and vortexed with 500μl of glass beads (Sigma G8772) at 4°C for 10 min (2 minutes on, 1 minute on ice).
RNA was extracted from the resulting lysate using the Direct-zol RNA Miniprep Kit (Zymo R2070) following manufacturer's instructions.

## mRNA and genomic DNA barcode sequencing
For pHPSC1142, pHPSC1117, and pHPSC1160 libraries, between 0.5-10µg of mRNA and gRNA for each library was reverse transcribed into cDNA using SuperScript IV (Thermo Fisher 18090050) and a primer annealing to the Illumina R1 primer binding site (oPB354).
A 170 nt region surrounding the 24 nt barcode was PCR-amplified from the resulting cDNA in two rounds.
Round 1 PCRs used cDNA template comprising 1/5th of the PCR reaction volume and primers oPB354 and oHP534.
Round 1 PCR cycle numbers were adjusted as needed to obtain adequate product concentration while avoiding overamplification (between 5 and 15 cycles), then cleaned using DNA Binding Buffer (Zymo ZD4004-1-L) and UPrep Micro Spin Columns (Genesee Scientific 88–343).
Cleaned samples were then used as template for Round 2 PCR, and cycles were again adjusted to avoid overamplification (between 4 to 8 cycles).
Round 2 PCRs used Round 1 PCR product comprising between 1/10th to 1/5th of the PCR reaction volume and oAS111 with indexed forward primers (oAS112-135 and oHP281-290).
Amplified samples were run on a 2% agarose gel and fragments of the correct size were purified using ADB Agarose Dissolving Buffer (Zymo D4001-1-100) and UPrep Micro Spin Columns (Genesee Scientific 88–343).
Concentrations of gel-purified samples were measured using a Qubit dsDNA HS Assay Kit (Q32851) with a Qubit 4 Fluorometer.
Samples were sequenced using an Illumina NextSeq 2000 in 1 × 50, 2 × 50, or 1 × 100 mode (depending on other samples pooled with the sequencing library).
For the pHPSC1142 libraries, samples were sequenced with standard Read 1, standard Read 2, and standard i7/i5 index sequencing primers.
A subset of these libraries were sent for re-sequencing to obtain greater read depth and sequenced with standard Read 1, custom Read 2 oAS1638 (to maintain compatibility with other libraries in the pool), and standard i7/i5 index sequencing primers.
For the pHPSC1117 libraries, samples were sequenced with the standard Read 1 sequencing primer and standard index sequencing primers.
For the pHPSC1160 libraries, samples were sequenced with standard Read 1, standard Read 2, and standard index sequencing primers.

For the FK~8~ library (pHPSC1163/pHPSC1164), between 0.5-10µg of mRNA and gRNA were reverse transcribed into cDNA using SuperScript IV and a primer annealing to the Illumina R1 primer binding site that contains a 7 nt unique molecular identifier (UMI) (oKC235).
A 195 nt region surrounding the 48 nt insert was PCR-amplified from the resulting cDNA in one round using oPN776 and indexed forward primers (oKC230-233, oKC239-242).
PCR cycle numbers were adjusted as needed to obtain adequate product concentration while avoiding overamplification (between 10 to 17 cycles).
Amplified samples were size-selected and quantified as described previously.
Samples were sequenced using an Illumina NextSeq 2000 in 1 × 70 mode using standard Read 1, custom i7 sequencing primer oKC256, standard i5, and custom Read 2 sequencing primer oKC236.

The 8× dicodon library (pHPSC1142) in glucose-depleted cells and the small 8× dicodon libraries (pHPSC1165-71) in pooled RQC deletion strains were reverse transcribed following the same procedure and primer as pHPSC1163/pHPSC1164 described above.
A 219 nt region surrounding the 48 nt insert and 24 nt barcode was PCR-amplified from the resulting cDNA in one round using oPN776 and indexed forward primers (oKC230-233, oKC239-242).
PCR cycle numbers were adjusted as needed to obtain adequate product concentration while avoiding overamplification (between 8 to 16 cycles).
Amplified samples were size-selected and quantified as described previously.
Samples were sequenced using an Illumina NextSeq 2000 in 1 × 70 mode using standard Read 1, custom i7 sequencing primer oKC256, standard i5, and custom Read 2 sequencing primer oKC236.

## Insert-barcode linkage sequencing
8–10 ng of plasmid pools (pHPSC1142, pHPSC1160, pHPSC1117, pHPSC1165-71) were used in PCR using Phusion polymerase (Thermo Fisher F530S) or Phusion Flash High-Fidelity PCR Master Mix (Thermo Fisher F548L).
Round 1 PCR was carried out for up to 10 cycles, with 8-10 ng plasmid pool template comprising 1/5th of the PCR reaction volume, using primers oPB354 and oHP534.
Round 1 PCRs were cleaned using DNA Binding Buffer (Zymo ZD4004-1-L) and UPrep Micro Spin Columns (Genesee Scientific 88–343).
Cleaned samples were used as template for Round 2 PCR, carried out to between 4 to 8 cycles, using oAS111 and indexed forward primers (oAS112-135 and oHP281-290).
Amplified samples were purified after size selection and quantified as described above.
Samples were sequenced using an Illumina NextSeq 2000 in 2 × 50 or 1 × 100 mode.
For the pHPSC1142 library, sequencing was performed using standard Read 1 sequencing primer, standard index sequencing primers, and custom Read 2 sequencing primer oAS1637.
For the pHPSC1117 library, sequencing was performed using standard Read 1 sequencing primer and standard index sequencing primers.
For the pHPSC1160 library, sequencing was performed using standard Read 1, standard Read 2, and standard index sequencing primers.
For the pHPSC1165-71 libraries, sequencing was performed using standard Read 1, standard Read 2, and standard index sequencing primers.

## Flow cytometry
Five single *S. cerevisiae* colonies integrated with plasmids described above were inoculated into separate wells of 96-well plates containing 150 μl of SCD-URA medium in each well and grown overnight at 30°C with shaking at 800rpm. 
The saturated cultures were diluted 100-fold into 150μl of fresh SCD-URA medium and grown for 5-6 hours at 30°C with shaking at 800rpm.
The plates were placed on ice and analyzed using the 96-well attachment of a BD FACS Aria or Symphony cytometer.
Forward scatter (FSC), side scatter (SSC), YFP fluorescence (FITC), and RFP fluorescence (PE.Texas.Red) were measured for 10,000 cells in each well.
The resulting data in individual .fcs files for each well were combined into a single tab-delimited text file. 
YFP expression was first normalized to RFP expression per cell (henceforth referred to as YFP/RFP), then used to calculate the median value of each well.
For the no-insert control, the median YFP/RFP values of all wells were averaged together.
The median YFP/RFP value per replicate for all strains were then normalized to the average no-insert control value by taking the log2 difference. 
The average and standard error of this ratio across replicates were calculated (Fig. [2](#figure-2)D).

## Computational analyses
Pre-processing steps for high-throughput sequencing were implemented as Snakemake workflows run within Singularity containers on an HPC cluster. All container images used in this study are publicly available as Docker images at \url{https://github.com/orgs/rasilab/packages}.
Python (v3.9.15) and R (v4.2.2) programming languages were used for all analyses unless mentioned otherwise. 

## Barcode to insert assignment
The raw data from insert-barcode linkage sequencing are in FASTQ format.
All pertinent reads were concatenated into one FASTQ file using ```fasterq-dump --concatenate-reads```, and inserts and barcodes were extracted and counted using ```awk``` (mawk implementation, v1.3.4).
Only insert-barcode combinations where the insert matches a reference sequence in the list of reference sequences using ```awk``` were retained. 
Barcodes were aligned against themselves using ```bowtie2``` with options ```-L 19 -N 1 --all --norc --no-unal -f```.
This self-alignment was used to exclude barcodes that are linked to different inserts or that are linked to the same barcode but are aligned against each other by ```bowtie2```.
In the latter case, the barcode with the lower count is discarded in ```filter_barcodes.ipynb```.
The final list of insert-barcode pairs is written as a comma-delimited .csv file for aligning barcodes from genomic DNA and mRNA sequencing below.

## Barcode counting in genomic DNA and mRNA
The raw data from sequencing barcodes in genomic DNA and mRNA is in FASTQ format.
All pertinent reads were concatenated into one FASTQ file, and barcodes were extracted and counted using ```awk```.
For barcodes that are present in the filtered barcodes .csv file from linkage sequencing, the barcode count and associated insert are printed into a .csv file for subsequent analyses in R.
For libraries containing both barcodes and UMIs, only distinct barcode-UMI combinations where the barcode is present in the filtered barcodes .csv file from linkage sequencing are retained.
The number of UMIs per barcode and associated insert are printed into a .csv file for subsequent analyses in R.

## mRNA quantification and statistical analyses for barcode sequencing
Only barcodes with a minimum of 10 reads and inserts with a minimum of 2–4 barcodes were included.
The mRNA level for each insert was calculated as the mean log2 ratio of the summed mRNA barcode counts to the summed gRNA barcode counts using 100 bootstrap samples.
The standard deviation was calculated across all barcodes for each insert using 100 bootstrap samples.
For libraries with a large number of variants (e.g. >= 70,000) mRNA levels were median-normalized within each library.
For libraries with a smaller number of variants (e.g. 1000-2000), libraries were normalized to spike-in strain barcode counts or library size (RPM).

For the small 8× dicodon libraries in pooled RQC deletion strains, only barcodes with a minimum of 10 reads, inserts with a minimum of 2 barcodes and 100 reads, and dipeptides with a minimum of 500 reads were included.
The mRNA level for each insert was calculated as the mean log2 ratio of the summed mRNA barcode counts to the summed gRNA barcode counts.
The mRNA level for each dipeptide was calculated as the average log fold change across inserts.
Because all strains were harvested as a pool, no spike-in strains were used and reads were instead normalized by total reads in the library.

For all other experiments, the standard error of the mean was calculated using the ```std.error``` function from the ```plotrix``` R package. 
P-values for statistically significant differences were calculated using the ```t.test``` or ```wilcox.test``` R functions as appropriate for each figure (see figure captions).

## Insert counting and mRNA quantification
For the FK~8~ deep mutational scanning library, inserts were sequenced directly and thus barcodes were not counted or used for statistical analysis.
Instead, inserts and UMIs were extracted and counted using ```awk```.
Only insert-UMI combinations where the insert matches a reference sequence in the list of reference sequences using ```awk``` were retained.
Subsequent insert-UMI counts were summed across the mRNA and gRNA samples.
mRNA levels for each insert were calculated as the log2 ratio of the summed mRNA insert-UMI counts to the summed gRNA insert-UMI counts, and then averaged across the two biological replicates.
Resultant mRNA levels were then normalized against mRNA levels of spike-in strains to allow comparison between wild-type, *hel2∆*, and *upf1∆* cells.


# Results

## A massively parallel reporter assay for mRNA effects in *S. cerevisiae*

To study the effect of coding sequence motifs on mRNA levels in *S. cerevisiae* in an unbiased manner, we modified a pooled reporter assay that we previously developed in mammalian cells [@Burke2022] (Fig. [1](#figure-1)A). 
In our design for *S. cerevisiae*, a tandem 8× repeat of all possible codon pairs (4096 pairs in total) is inserted between the *PGK1* and *YFP* coding sequences.
The 8× repetition amplifies the effect of each codon pair on mRNA levels.
Each codon pair repeat is followed by a 24 nucleotide random barcode without stop codons, which enables their accurate quantification without sequence-dependent biases.
Barcode sequences linked to each codon pair insert are identified by sequencing the plasmid library.
We integrated the plasmid library into a noncoding region of chromosome I of *S. cerevisiae*, extracted mRNA and genomic DNA, and counted barcodes by high throughput amplicon sequencing.
Barcode counts in the cDNA normalized by corresponding counts in the genomic DNA provide a relative measure of the steady-state mRNA level of each codon pair insert in our library. 
We further normalized mRNA levels by the median value across all inserts in the library to account for different sequencing depths and to facilitate comparison across experiments.

We recovered a median of 20 barcodes linked to each codon pair insert in the cDNA and genomic DNA libraries out of the 100 barcodes per insert in the plasmid library (Fig. [S1](#figure-s1)A).
We identified barcodes linked to 97% of all codon pairs in the plasmid library and 91% in the cDNA and genomic DNA libraries (Fig. [1](#figure-1)B), indicating our assay's ability to capture most of the codon pair motifs.
Missing codon pairs in the plasmid library have a high GC content (Fig. [S1](#figure-s1)B), suggesting that they are either resistant to cloning or toxic for *E. coli* growth.
\linelabel{line:toxicity-start}Many of the remaining missing codon pairs in the cDNA and genomic DNA from *S. cerevisiae* encode hydrophobic amino acids (Fig. [S1](#figure-s1)C).
Constitutive expression of such dipeptide repeats might be toxic due to their aggregation or membrane insertion.\linelabel{line:toxicity-end}

To test whether our massively parallel assay recapitulates known codon and amino acid effects, we examined the average mRNA levels of individual codons and amino acids (Fig. [1](#figure-1)C,E).
To this end, we calculated the normalized ratio of barcode counts between cDNA and genomic DNA across all codon pairs containing each of the 64 codons or 20 amino acids.
We observed a tight overlap of average mRNA levels of each codon or amino acid between positions 1 and 2 of the codon pair (Fig. [1](#figure-1)C,E).
This observation is consistent with the 8× repetitive nature of our codon pair library, due to which each codon pair insert is similar to its codon-reversed counterpart except for circular permutation of a single codon.

Within several synonymous codon families, codons with lowest mRNA levels in our assay (Fig. [1](#figure-1)C) correspond to the less frequent codons within that family in the *S. cerevisiae* transcriptome [@Sharp1987;@Reis2004;@Wallace2013].
These include CGA, CGG, and AGG (Arg), ATA (Ile), and CCG (Pro) (Fig. [1](#figure-1)C), all of which are known to reduce protein expression or trigger mRNA decay in *S. cerevisiae* [@Letzring2010;@Letzring2013;@Presnyak2015;@Pechmann2013;@Gamble2016;@Park2019].
In line with these observations, average mRNA levels of codons in our assay positively correlated with codon stability coefficients (CSCs) inferred from stability measurements on endogenous mRNAs in *S. cerevisiae* [@Presnyak2015;@Forrest2020] (Fig. [1](#figure-1)D, r=0.50, p<1e-4).
This correlation with CSC is notable given that we vary only a 16 codon region within a 700 codon *PGK1-YFP* coding sequence in our assay.

At the amino acid level, arginine, lysine, and tryptophan had the lowest mRNA levels on average (Fig. [1](#figure-1)E), consistent with the known role for these amino acids in triggering ribosome-associated quality control [@Ito-harashima2007;@Letzring2013;@Dimitrova2009;@Kuroha2010;@Brandman2012;@Brandman2016;@Sitron2017;@Mizuno2021;@Park2019;@Arthur2018].
mRNA effects of these amino acids are comparable to that of stop codons, which trigger nonsense-mediated mRNA decay (NMD).
In contrast to the codon effects, average mRNA levels of amino acids in our assay do not show significant correlation with amino acid stability coefficients (AASCs) inferred from stability measurements on endogenous mRNAs in *S. cerevisiae* [@Forrest2020] (Fig. [1](#figure-1)F).
This lack of correlation is in line with the limited role of amino acid identity in determining global mRNA stability in *S. cerevisiae* [@Presnyak2015;@Forrest2020].
\linelabel{line:clustered-codons-start}Further, AASC values are derived from endogenous mRNAs where amino acids are typically not clustered as they are in our codon pair reporter assay.
Thus, the low correlation of our results with AASC (Fig. [1](#figure-1)F) suggests that clustering of amino acids rather than the identity of the amino acid itself drives the observed mRNA effects in our assay.
Conversely, the higher correlation between our results and CSC (Fig. [1](#figure-1)D) suggests that the codon effects in our assay are driven by the identity of the codon itself.\linelabel{line:clustered-codons-end}

## Identification of codon pair repeats that reduce mRNA levels

Inclusion of all possible codon pair repeats in our library allowed us to next study the effect of pairwise codon and amino acid combinations on mRNA levels (Fig. [2](#figure-2)A,B).
We found a strong correlation (r=0.92, p<1e-10) between mRNA effects of codon pairs and their reverse counterparts, indicating the robustness of our measurements (Fig. [S1](#figure-s1)D).
We identified several families of synonymous codon pairs that consistently reduced mRNA levels relative to the remaining inserts in the library (black outlines, Fig. [2](#figure-2)A,B). 
Among the most destabilizing codon families were those encoding lysine, arginine, and tryptophan repeats, in agreement with the average destabilizing effect of these amino acids (Fig. [1](#figure-1)E).
\linelabel{line:mliv-fyw-start}Several hydrophobic and aromatic pairs (MLIV x FYW) as well as glycine pairs had low mRNA levels (Fig. [2](#figure-2)A).
As noted earlier, many of these pairs also had low read counts in genomic DNA, suggesting that their mRNA effects might arise indirectly from cell growth inhibition rather than due to changes in mRNA stability. \linelabel{line:mliv-fyw-end}

Our assay revealed several dipeptide repeats that have not been previously associated with ribosome stalling or ribosome-associated quality control in *S. cerevisiae* (Fig. [2](#figure-2)A,B).
These include several combinations of bulky and positively charged amino acids such as phenylalanine-lysine (FK/KF), tryptophan-arginine (WR/RW), tyrosine-arginine (YR/RY), and tyrosine-lysine (YK/KY).
\linelabel{line:purines-start}Interestingly, within the tyrosine-lysine and tyrosine-arginine groups, the strongest mRNA-reducing effects are for the purine-containing codons (AAA, AAG, AGA, and AGG), possibly due to nucleotide-specific interactions at the decoding center of the ribosome as has been observed in other stalling sequences [@Chandrasekaran2019;@Matsuo2020].\linelabel{line:purines-end}
Some combinations of hydrophobic and positively charged amino acids such as arginine-leucine (LR/RL) and arginine-isoleucine (IR/RI) were also destabilizing.
Notably, we found similar mRNA-destabilizing combinations of positively charged amino acids with bulky and hydrophobic amino acids in human cells [@Burke2022], indicating that these sequences may be broadly destabilizing across eukaryotes.
We confirmed the requirement of bulkiness for reducing mRNA levels in a targeted experiment by replacing phenylalanine with the smaller non-polar glycine in combination with lysine (Fig. [S2](#figure-s2)A).
Using flow cytometry, we found FK dipeptide repeats reduced YFP reporter levels similar to the known RQC-inducing KK repeat (Fig. [2](#figure-2)C,D).
Moreover, protein levels of a control RFP reporter expressed from a different chromosomal locus was unaffected by FK repeat expression, indicating that it does not perturb global gene expression (Fig. [2](#figure-2)C).

Proline-glycine (PG/GP) and proline-aspartic acid (PD/DP) repeats were also among the mRNA-destabilizing codon pairs in our assay (black outlines, Fig. [2](#figure-2)A,B). 
Unlike combinations of bulky and positively charged amino acids, these repeats did not reduce mRNA levels in human cells [@Burke2022].
Conversely, amino acid combinations such as arginine-histidine and serine-phenylalanine that destabilize mRNAs in human cells [@Burke2022] did not reduce mRNA levels in our assay in *S. cerevisiae*.
Finally, dipeptides comprised of bulky and positively charged amino acids as well as proline-glycine and proline-aspartic acid dipeptides are enriched at sites of ribosome collisions in *S. cerevisiae* and mammalian cells [@Han2020;@Sabi2017;@Ingolia2011].
This observation suggests that the mRNA-destabilizing effects of such dipeptide repeats in our assay arises from ribosome slowdown when these peptide motifs are synthesized during mRNA translation.

## Dipeptide-induced mRNA destabilization requires translation

We used three different approaches to assay whether translation of dipeptide repeats is necessary for their mRNA-destabilizing effects.

First, we computationally tested whether the presence of codon pairs in the correct *PGK1-YFP* reading frame is necessary for the mRNA effects of the corresponding dipeptide repeats (Fig. [3](#figure-3)A).
\linelabel{line:computational-frameshift-start}We compared the mRNA level of the insert with a codon pair in the +0 frame against the mRNA levels of the insert where the sequence is shifted over by one, two, or three nucleotides (+1, +2, +3 frame respectively).\linelabel{line:computational-frameshift-end}
mRNA effects of dipeptide repeats encoded in the correct +0 frame showed much lower correlation with the mRNA effects in the wrong +1 and +2 frames than with the correct +3 frame.
We note that the +3 frameshift is essentially the same frame as the in-frame codon pair but with the codon positions interchanged.
Thus, the simple presence of nucleotide sequences coding for destabilizing dipeptide repeats in the mRNA is not sufficient to reduce mRNA levels; they need to be present in the correct translated frame.
Consistent with this observation, we found low correlation between mRNA levels of codon pair inserts and basic measures of nucleotide diversity such as GC content or GC3 content (Fig. [S2](#figure-s2)B).

Second, we tested whether global inhibition of translation is sufficient to rescue the mRNA-destabilizing effects of dipeptide repeats.
Glucose deprivation is known to rapidly inhibit translation initiation in yeast [@Ashe2000;@Gancedo2008].
Therefore, we grew *S. cerevisiae* cells containing the original codon pair library (Fig. [1](#figure-1)A) in media without glucose for one hour, and quantified relative mRNA levels of inserts by high throughput sequencing as before.
At the codon level, glucose deprivation increased the relative mRNA levels of inserts containing arginine and lysine codons, consistent with their mRNA effects arising at the translational level (Fig. [3](#figure-3)B).
Glucose deprivation also increased the relative mRNA levels of several dipeptide-encoding inserts that were destabilizing under normal growth (Fig. [3](#figure-3)C).
These include the known RQC-inducing polybasic sequences RR, RK, KR, and KK, as well as the novel destabilizing dipeptide repeats such as KW, FK, RW, PD, and PG that we identified in our original screen.
\linelabel{line:nmd-glucose-start}Intriguingly, stop codon-containing inserts had lower mRNA levels during glucose deprivation even though nonsense-mediated mRNA decay of these inserts also requires translation.
This might be because NMD is triggered following just one or few rounds of translation [@Hoek2019], while a high rate of translation initiation is necessary for collision-driven mRNA decay [@Park2019].
Thus, the inhibition of translation during glucose deprivation will have a greater effect on the rate of collision-dependent decay than on NMD, leading to relatively lower mRNA levels of stop codon-containing inserts during glucose deprivation (Fig. [S4](#figure-s4)B).\linelabel{line:nmd-glucose-end}

Third, we tested whether experimentally altering the translated reading frame of codon pair inserts is sufficient to abrogate their mRNA-destabilizing effects, which would rule out transcription or RNA processing as possible mechanisms.
Therefore, we inserted 2 base pairs upstream of the codon pair insert, leaving all other aspects of the reporter identical to the original library, and assayed for mRNA effects as before (Fig. [3](#figure-3)D).
The 2 base pair insertion shifts all codon pair inserts to the -1 frame, but does not introduce a stop codon upstream of the codon pair inserts.
At the aggregate level, the -1 frameshifted library loses the previously observed correlation with codon stability coefficients (Fig. [3](#figure-3)E, compare against Fig. [1](#figure-1)D), consistent with the codon effects predominantly arising from translation.
Similarly, most dipeptide repeats that destabilize mRNAs in the original library had higher relative mRNA levels in the -1 frameshifted library (Fig. [3](#figure-3)F).
Note that the WW dipeptide-coding repeat did not pass our read cutoff filter in both the glucose deprivation and the -1 frameshifting experiment (Fig. [3](#figure-3)C,F).

\linelabel{line:summarize-translation-start}Overall, for the set of 19 dipeptides that we reliably identified as destabilizing in our assay, we found that 15 of them showed rescued mRNA levels with all three methods (Fig. [S3](#figure-s3)A).
Thus, our computational and experimental frameshifting assays, along with our glucose depletion experiment, establish the translation dependence of the mRNA effects of most of the destabilizing dipeptide repeats identified in our original screen.\linelabel{line:summarize-translation-end}

## Ribosome-associated quality control regulates mRNA destabilization by dipeptide motifs

Given the translational dependence of mRNA destabilization by dipeptide repeats, we sought to identify the co-translational regulatory pathways mediating these effects.
Ribosome stalling at poly-lysine, poly-arginine, and poly-tryptophan repeats triggers ribosome-associated quality control (RQC) of nascent peptides and mRNAs in *S. cerevisiae* [@Brandman2012;@Kuroha2010;@Letzring2013;@Sitron2017;@Mizuno2021].
The E3 ubiquitin ligase Hel2 (*S. cerevisiae* homolog of human ZNF598), which binds collided ribosomes at extended ribosome stalls, is necessary for RQC induction at these sequences [@Brandman2012;@Sitron2017;@Juszkiewicz2017;@Sundaramoorthy2017;@Matsuo2017;@Simms2017;@Garzia2017] (Fig. [4](#figure-4)A).
Syh1 (GIGYF2 in humans) has also been recently implicated in a Hel2-independent pathway of mRNA decay of reporters with repeats of the rare codon CGA [@Veltri2022;@Hickey2020;@Juszkiewicz2020a] (Fig. [4](#figure-4)A).
To test the requirement for these factors in reducing the mRNA levels at the novel destabilizing dipeptide repeats identified in our screen, we integrated our original 4096-codon pair library into *S. cerevisiae* strains with *HEL2* or *SYH1* deletion, and measured relative mRNA levels as before (Fig. [4](#figure-4)B).

We compared by linear regression the relative mRNA levels in the *hel2Δ* and *syh1Δ* strains against the wild-type strain to identify inserts with altered mRNA levels (Fig. [4](#figure-4)C,D).
In the *hel2Δ* strain, 14 dipeptides had 1.5-fold or greater increase in relative mRNA levels compared to the wild-type strain (red points, Fig. [4](#figure-4)C).
These include the known RQC-inducing repeats, KK, RR, WW, RK, and KR.
*HEL2* deletion also restored the mRNA levels of several bulky and positively charged dipeptide repeats (FK/KF, WR/RW, WK/KW) as well as proline-aspartic acid (PD/DP) and proline-glycine (PG/GP) repeats (Fig. [4](#figure-4)E, Fig. [S3](#figure-s3)C).
By contrast, *SYH1* deletion did not restore the mRNA levels of any dipeptide repeat (Fig. [4](#figure-4)D,E).
This is likely because Syh1 acts as a compensatory mechanism when Hel2-mediated RQC is inactive [@Veltri2022].

\linelabel{line:other-factors-start}To further assess the involvement of other RNA decay factors in mediating the effects of these pairs, we integrated a small pool of select codon pairs into *hel2∆*, *syh1∆*, *hel2∆syh1∆*, *xrn1∆*, and *cue2∆* cells.
Codon pairs in this small pool included many of the pairs that reduced mRNA levels in our initial screen along with negative control pairs.
Consistent with the results of the full library, mRNA levels for none of the destabilized dipeptides were rescued in *syh1Δ* cells, while they were rescued in *hel2Δ* cells (Fig. [S4](#figure-s4)A).
mRNA levels for destabilized dipeptides in the *hel2Δsyh1Δ* double deletion strain were higher than in any of the single deletion strains, consistent with the known mutually compensatory roles of these two factors.
*cue2Δ* and *xrn1Δ* cells also had varying but generally higher mRNA levels for destabilizing reporters than wild-type cells, consistent with previous work [@Dorazio2019].
mRNA destabilization by RI/IR pairs were not rescued by either *HEL2* or *SYH1* deletion in the full library, and were also not rescued by any of the other decay factors tested in the small library.

Together, these results reveal that Hel2-mediated RQC regulates most but not all mRNA-destabilizing effects of dipeptide repeats identified in our original screen, and suggest that Syh1 and Hel2 can act compensatorily to regulate these dipeptides.
\linelabel{line:other-factors-end}

## Deep mutational scanning identifies critical residues mediating mRNA destabilization by dipeptide motifs

Ribosome-associated quality control often depends on interactions between specific residues in the nascent peptide and various regions of the ribosome such as the peptidyl-transferase center (PTC) and the uL4/uL22 constriction point in the exit tunnel [@Bhushan2011;@Matsuo2020;@Shanmuganathan2019;@Chandrasekaran2019;@Mizuno2021].
To dissect the mechanism by which the FK dipeptide repeat triggers mRNA destabilization, we developed a deep mutational scanning assay using reporter mRNA level as a readout (Fig. [5](#figure-5)A).
Specifically, we mutated each location in the 16-codon insert encoding (FK)~8~ to all 64 codons to generate a pooled library of 1024 variants.
We cloned these variants between the *PGK1* and *YFP* coding sequences, integrated them into the genomes of wild-type and *hel2Δ* cells, and measured variant frequency in cDNA and genomic DNA by high throughput amplicon sequencing.
We used the ratio of cDNA to genomic DNA to quantify the relative mRNA levels of each variant, and further normalized to spike-in control strains to enable comparison across different genotypes (see Methods).
We confirmed reproducibility of mRNA levels between biological replicate transformations into *S. cerevisiae* of the same plasmid library (Fig. [5](#figure-5)B).

Visualizing the relative mRNA levels of (FK)~8~ mutants as a function of mutation identity and location yields several interesting observations (Fig. [5](#figure-5)C).
\linelabel{line:upf1-start}
First, mRNA levels of stop codon-containing variants decrease only when stop codons are present until position 11 of the (FK)~8~ repeat.
This suggests that nonsense-mediated mRNA decay does not occur on mRNAs undergoing extended ribosome stalling.
Indeed, low coverage deep mutational scanning confirmed that deletion of *UPF1*, the primary effector of NMD, does not rescue reporter mRNA levels when stop codons occur beyond position 11 of the (FK)~8~ repeat (Fig. [S5](#figure-s5)A).\linelabel{line:upf1-end}
\linelabel{line:hel2-nmd-start}Since *hel2∆* cells also exhibit the same pattern of stop codon effects as wild-type cells (Fig. [S5](#figure-s5)B), the observed lack of NMD is not simply due to kinetic competition between RQC and NMD, but rather a consequence of ribosome stalling driven by the first 10 codons of the (FK)~8~-encoding region.\linelabel{line:hel2-nmd-end}

Second, mRNA levels for nearly all mutations from positions 1 to 6 are as low as the wild-type sequence.
This observation is consistent with 10 residues in (FK)~8~ being the minimum RQC-inducing length, because mutating any of the first six residues will preserve this minimum length downstream of the mutated position.
Pro is the only target mutation within the first six positions that consistently rescues mRNA levels, likely by limiting the conformational flexibility of the nascent peptide [@Macarthur1991;@Richardson1989;@Li1996].
Third, location 12 (and to a lesser extent location 14) within (FK)~8~ are the sole positions that require positively charged Arg or Lys to trigger Hel2-dependent RQC.
At several other locations where the original amino acid is positively charged (such as at positions 6, 8, and 10), mutation to the bulkiest Trp residue can still trigger RQC, while mutations to other aromatic amino acids (Phe and Tyr) are insufficient.
Fourth, at some locations where the original amino acid is bulky (such as at positions 9 and 11), mutating to the bulkier Trp or to positively charged Arg or Lys maintains RQC.
The two preceding observations imply that positive charge and bulkiness play interchangeable roles at several locations within the (FK)~8~ repeat in triggering RQC.
Finally, at position 7, where the original amino acid is Phe, mutations to other aromatic amino acids (Trp or Tyr) or to a negatively charged residue (Glu or Asp) triggers RQC, while positive charge is insufficient.
Thus, the interchangeability of bulkiness with positive charge in triggering RQC is not universal, but rather depends on the location within the stalling peptide.

We next compared the aggregate effect of all mutations at each location of the (FK)~8~ repeat on mRNA levels between wild-type and *hel2∆* cells (Fig. [S5](#figure-5)C).
We excluded stop-codon containing mutants from this analysis to avoid convoluting NMD and RQC effects. 
The positions with the highest mutational effect differences between the two strains are at the ends of the stalling sequence: positions 1-6, 15, and 16 of (FK)~8~.
This observation is consistent with our earlier interpretation that translation of approximately 10 residues of (FK)~8~ is necessary to drive Hel2-dependent mRNA decay.
Conversely, positions 10, 9, and 12 had the least mutational effect differences between the two strains, revealing that these positions are most important for triggering Hel2-dependent RQC.
Finally, *HEL2* deletion did not fully rescue the mRNA effects of any (FK)~8~ terminal mutants (positions 1, 15, 16), suggesting that Hel2-dependent RQC activity is saturated at longer repeat lengths, and mRNA decay proceeds through multiple compensatory pathways.

## Codon pair library predicts mRNA effects of endogenous sequences

Though a few mRNA sequences are known to stall ribosomes and trigger RQC in reporter studies [@Matsuo2020;@Yanagitani2011;@Sinha2020], the sequence motifs that underpin endogenous mRNA stability are not well understood.
For example, the simple presence of polybasic stretches or rare codons is not sufficient to trigger quality control on endogenous yeast mRNAs [@Matsuo2020;@Barros2021].
Thus, we sought to test whether our codon pair assay could predict mRNA effects of sequence motifs in endogenous *S. cerevisiae* genes.
To this end, we assayed 1904 fragments, each 48 nucleotides long, from endogenous mRNAs spanning a wide range of expression levels [@Weinberg2016] using the same reporter design as the codon pair library (Fig. [6](#figure-6)A).
We integrated this endogenous fragment library into wild-type cells and counted barcodes by high throughput amplicon sequencing as before.
Compared to the codon pair library, mRNA levels in the endogenous fragment library were more tightly distributed around the median, indicating more muted effects on mRNA stability (Fig. [6](#figure-6)B).
We next calculated the codon stability coefficient (CSC) values for each of the 64 codons using mRNA levels either from the codon pair library or the endogenous fragment library [@Presnyak2015].
We found strong correlation (r=0.67, p<1e-8) between the two libraries, indicating that mRNA effects of codon pair repeats predict mRNA effects of endogenous sequence motifs in wild-type cells (Fig. [6](#figure-6)C).
\linelabel{line:additive-start}
We next integrated the endogenous fragment library into *hel2∆* cells and tested how Hel2-dependent RQC affects the relationship between CSC values calculated from the codon pair and the endogenous fragment libraries.
We found that *hel2∆* cells still exhibited a significant correlation (r=0.49, p<1e-4) between the two libraries, though to a lesser extent than in wild-type cells (Fig. [6](#figure-6)D).
This is consistent with the differences in mRNA stability of endogenous sequences arising from the additive effects of codons rather than from RQC occurring at specific amino acid sequences.
\linelabel{line:additive-end}

# Discussion

Here, we use a massively parallel approach to identify and dissect sequence motifs underlying mRNA instability in *S. cerevisiae*.
In addition to validating known codon and amino acid effects on mRNA stability, we identify several sequence motifs that have not been previously associated with mRNA decay.
These include combinations of bulky and positively charged amino acids, and proline with aspartate and glycine, all of which trigger translation-dependent mRNA decay through the Hel2-dependent RQC pathway.
By combining our massively parallel assay with deep mutational scanning, we dissect the codon-level biochemical requirements for triggering mRNA decay by a bulky and positively charged dipeptide repeat.
Despite the apparent simplicity of the codon pair repeat library, we find that it captures the mRNA effects of endogenous coding sequence fragments from the *S. cerevisiae* transcriptome.

Our codon pair library confirms the role of codon optimality as a major determinant of mRNA stability in *S. cerevisiae*, and provides insights into the resulting hierarchy of effects.
We observe several synonymous codon families within which aggregate mRNA levels differ based on the hierarchy of codon optimality [@Presnyak2015;@Pechmann2013] (Fig. [1](#figure-1)C), but have different absolute effects.
The non-optimal codons ATA (Ile), GTA (Val), and TAT (Tyr) are highly destabilized relative to their optimal counterparts. 
By contrast, the optimal codon TCC (Ser) is preferentially stabilized relative to its non-optimal counterparts.
Both the arginine and proline synonymous codon families are stratified based on codon optimality even though these amino acids have opposite average effects on mRNA stability (Fig. [1](#figure-1)E, Arg -- destabilizing, Pro -- stabilizing).
Thus, codon optimality effects on mRNA stability act in parallel and independent of amino acid identity.
Consistent with codon optimality-mediated mRNA decay being a co-translational process [@Radhakrishnan2016;@Hanson2018;@Buschauer2020], translational shutoff by glucose depletion rescues the mRNA-destabilizing effects of eight out of the 10 most non-optimal codons (ATA, CGA, AGG, GTA, ACG, AGT, AAA, AGC) [@Presnyak2015] (Fig. [3](#figure-3)B).
Finally, the effects of codon optimality on mRNA stability in our codon pair library are driven by mutations within a short 16 codon region despite being part of a 700 codon *PGK1-YFP* mRNA.
This is likely because the *PGK1-YFP* region is efficiently translated [@Hoekema1987], while the tandem and repetitive nature of the codon pairs amplifies their effect on ribosome slowdown and recruitment of mRNA-destabilizing factors.

While polybasic and poly-tryptophan sequences are known to trigger RQC in *S. cerevisiae*, our codon pair assay reveals combinations of bulky (Val, Ile, Leu, Phe, Tyr, Trp) and positively charged (Arg, Lys) amino acids as a general trigger of mRNA decay (Fig. [2](#figure-2)A,B).
Interestingly, combinations of Val, Ile, Leu, and Phe with Arg and Lys were also found to destabilize mRNA in human cells [@Burke2022], indicating their evolutionary conservation as mRNA-destabilizing sequences across eukaryotes.
Supporting these findings, ribosome profiling in human cells revealed an enrichment in disome occupancy at sites that followed an Arg-X-Lys pattern, with highest disome density occurring when X was Phe, Ile, or Leu [@Han2020].
We find that positively charged amino acids in combination with the bulkiest side chains (Phe, Trp) trigger RQC-dependent mRNA decay in *S. cerevisiae*, while less bulky side chains (Val, Ile, Leu) decrease mRNA levels in a RQC-independent manner (Fig. [4](#figure-4)E, Fig. [4](#figure-s4)A).
\linelabel{line:gamble-comparison-start}Gamble et al., 2016, found that several codon pairs for Arg with Ile and Leu are likely destabilized due to codon rarity and the requirement of some of these codons to be wobble decoded [@Gamble2016].
Of the 17 codon pairs that inhibited translation in Gamble et al., 2016, we were able to reliably measure mRNA levels of 13 codon pairs, of which 12 are in the lowest quartile of mRNA levels in our assay (Fig. [S6](#figure-s6)A).
This is consistent with ribosome stalling at these codon pairs triggering mRNA decay when the codon pairs occur in a cluster [@Brule2017].
\linelabel{line:gamble-comparison-end}

In our codon pair assay, combinations of proline with aspartate and glycine (PD/DP, PG/GP) decrease mRNA levels in a Hel2-dependent manner (Fig. [2](#figure-2)A,B, Fig. [4](#figure-4)E, Fig. [S3](#figure-s3)).
While poly-proline sequences stall ribosomes due to inefficient peptide bond formation, these sequences are not known to induce RQC and are instead translated with the assistance of eIF5A [@Gutierrez2013].
Consistent with these previous findings, proline-proline combinations, and all other proline-containing combinations except for with aspartate and glycine, are stabilizing in our assay.
Conversely, no other aspartate or glycine containing codon pairs except the ones with proline are destabilizing.
While increased ribosome occupancy has been observed at proline, aspartate, and glycine codons in both *S. cerevisiae* and human cells [@Han2020;@Sabi2015;@Artieri2014], our results suggest that these effects may be driven by combinations of these amino acids rather than by their individual occurrence.
Consistent with this idea, PD and PPD peptides have increased ribosome occupancy and are under-represented in the *S. cerevisiae* proteome, while PP and GG dipeptides also have increased ribosome occupancy but are over-represented [@Sabi2017].
Similarly, PD dipeptides in *E. coli* [@Peil2013], and PD and PG motifs in mouse embryonic stem cells [@Ingolia2011] have increased ribosome occupancy.
Thus, PD and PG motifs may have evolutionarily conserved effects on ribosome slowdown through a mechanism distinct from poly-proline stalls, and can trigger Hel2-dependent mRNA decay in *S. cerevisiae*.

Our deep mutational scanning reveals complex codon-level requirements for the (FK)~8~ repeat to confer mRNA instability in a Hel2-dependent manner (Fig. [5](#figure-5)).
Strikingly, these results also exhibit several similarities to the composite biochemical requirements for ribosome stalling observed at the known endogenous RQC substrate in *S. cerevisiae*, *SDD1*~196-212~ (FFYEDYLIFDCRAKRRK) [@Matsuo2020]. 
First, the strict requirement for positive charge at positions 12 and 14 of the (FK)~8~ repeat to trigger mRNA decay matches the requirement for positive charge at positions 207 and 209 of *SDD1*~196-212~, which are thought to perturb the petidyl-transferase center of the ribosome.
Second, the requirement for bulky aromatic residues at position 7 of (FK)~8~ is similar to the requirement for aromatic residues at position 201 of *SDD1*~196-212~, which are thought to interact with the uL4/uL22 constriction point of the ribosome.
Third, the ability of negatively charged aspartate, and to a lesser extent glutamate, at position 7 of (FK)~8~ to preserve stalling resembles the requirement for aspartate at position 200 of *SDD1*~196-212~, though in the *SDD1* case, the requirement for aspartate is strict.
Our results show that bulkiness can be compensated by negative or positive charge in stall sequences depending on the position along the sequence. 
Specifically, aspartate's prevalence in stalling sequences is evident in ribosome profiling studies from *S. cerevisiae* to humans, which show increases in monosome and disome occupancy at aspartate codons [@Han2020;@Sabi2015;@Artieri2014], presumably due to interactions with the negatively charged ribosome exit tunnel.
Taken together, our deep mutational scanning results with a simple (FK)~8~ repeat recapitulate and generalize the biochemical requirements for ribosome stalling and quality control observed with other endogenous stall sequences.
\linelabel{line:limitations-start}Nevertheless, our mutational scanning results with the single (FK)~8~ repeat are insufficient to decipher the mRNA-destabilizing effects of other dipeptides such as (PG)~8~ and (PD)~8~ identified in our assay or endogenous stalling sequences with critical role for proline rather than positively charged amino acids [@Tanner2009;@Cao1995;@Bottorff2022].\linelabel{line:limitations-end}

While we did not intend to focus on NMD for this study, our assay nonetheless identified several patterns related to NMD.
Surprisingly, we found that glucose depletion selectively destabilized stop codon-containing mRNAs for all three stop codons (Fig. [3](#figure-3)B) even though NMD depends on mRNA translation.
\linelabel{line:nmd-glucose-discussion-start}A likely explanation is that NMD, which requires only a few rounds of translation, experiences a less drastic inhibition during glucose depletion than collision-driven mRNA decay, a decay process requiring high translation initiation rate.\linelabel{line:nmd-glucose-discussion-end}
Deep mutational scanning of the (FK)~8~ dipeptide also revealed the differential kinetics between NMD and RQC when in competition for the same substrates (Fig. [5](#figure-5)C).
Before 10 Phe and Lys residues are translated, stop-codon containing sequences are predominantly degraded by NMD.
After this minimum stalling sequence is translated, RQC dominates as the primary regulatory mechanism.
A minimum length of 10 Phe and Lys residues of RQC is consistent with 12 repeated tryptophan residues being sufficient to induce RQC, while greater than 8 residues were required [@Mizuno2021].

The results of our combinatorial codon pair and endogenous motif mRNA stability assays suggest that a wider diversity of mRNA sequences impact mRNA stability than previously appreciated.
Poly-GP repeats, identified in our study to stall ribosomes and trigger RQC, are translated through repeat associated non-ATG (RAN) translation of the pathogenic G~4~C~2~ repeat expansion in the *C9ORF72* gene and is a biomarker for C9ORF72-associated ALS [@Gendron2017].
Valine-arginine repeats, identified in our study to destabilize mRNAs in a Hel2-independent manner, are also translated through RAN in the mammalian TERRA sequence to form inclusions during disrupted telomere homeostasis [@Al-turki2023].
Thus the sequences identified in our study have important implications in the maintenance of cellular homeostasis and disease progression.

# Author Contributions{.unlisted .unnumbered}
K.Y.C. conceived the project, designed research, performed experiments, analyzed data, and wrote the manuscript.
H.P. designed research and performed experiments. 
A.R.S. conceived the project, designed research, analyzed data, wrote the manuscript, supervised the project, and acquired funding.

# Data and Code Availability
The raw sequencing data generated in this study have been deposited in the Sequence Read Archive under BioProject accession number PRJNA974090, at \url{https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA974090}.
Raw data from flow cytometry are available at \url{http://flowrepository.org/id/FR-FCM-Z6QH}.
Code to reproduce figures in the manuscript starting from raw data is publicly available at \url{https://doi.org/10.5281/zenodo.8365102} and \url{https://github.com/rasilab/chen_2023}. 
Software environments used to run the code in the above GitHub repository are publicly available as Docker containers at \url{https://github.com/orgs/rasilab/packages}.
Biological reagents or methodology clarification can be publicly requested by opening an issue at \url{https://github.com/rasilab/chen_2023/issues}.

# Funding 
This research was funded by NIH R35 GM119835 and NSF MCB 1846521 received by ARS.
This research was supported by the Genomics Shared Resources of the Fred Hutch/University of Washington Cancer Consortium (P30 CA015704) and Fred Hutch Scientific Computing (NIH grants S10-OD-020069 and S10-OD-028685). 
The funders had no role in study design, data collection and analysis, decision to publish, or preparation of the manuscript.

# Conflict of interests{.unlisted .unnumbered}

None

# Acknowledgements{.unlisted .unnumbered}
We thank members of the Subramaniam lab, the Zid lab, and Joshua Arribere for discussions and feedback on the manuscript.


<!-- \End{multicols} -->


# References

::: {#refs}
:::

\pagebreak

# Figure Captions

# Figure 1 
<!-- ![](svg/fig1.svg){width=7.5in} -->

**Fig.1: A massively parallel reporter assay for mRNA effects in *S. cerevisiae*.**
**(A)** Assay design.
Each element in the library includes one of 4096 possible combinations of codon pairs repeated eight times. 
Each repeat is inserted in-frame between *PGK1* and *YFP*, and is followed by a random 24 nt barcode without in-frame stop codons (median of 20 barcodes/insert).
The 80,000 variant library is integrated as a pool into a noncoding region of chromosome I. 
The barcodes in cDNA and genomic DNA are counted by high throughput amplicon sequencing. 
Relative steady state mRNA effect of each insert is calculated by first normalizing cDNA counts by genomic DNA counts for all barcodes linked to that insert and then by median-normalizing across all codon pairs. 
**(B)** Distribution of reads per codon pair insert for cDNA, genomic DNA, and plasmid libraries. 
**(C)** Average mRNA level of reporters with indicated codons in position 1 (circles) or position 2 (triangles) of the codon pair. 
**(D)** Average mRNA effects of individual codons compared against codon stability coefficients derived from endogenous *S. cerevisiae* mRNAs [@Presnyak2015]. 
**(E)** Average mRNA level of reporters encoding the indicated amino acid in position 1 (circles) or position 2 (triangles) of the codon pair. 
Error bars in C and E represent standard deviation over all variants containing the codon or amino acid at each position.
Average mRNA levels in C and E are median-normalized over all codons or amino acids at each position.
**(F)** Same as D, except for amino acids compared against amino acid stability coefficients [@Forrest2020].

# Figure 2
<!-- ![](svg/fig2.svg){width=6.58in} -->

**Fig.2: Identification of codon pairs and dipeptides that reduce mRNA levels.**
**(A)** mRNA level of inserts encoding each codon pair repeat. 
Codons at the first or second position of each pair are shown along the horizontal or vertical axes, respectively.
Missing codon pairs are in grey. 
Synonymous codon pair families with lower mRNA levels are outlined in black.
**(B)** mRNA level of inserts encoding each dipeptide repeat. 
Amino acids at the first or second position of each dipeptide are shown along the horizontal or vertical axes, respectively.
Missing dipeptides are in grey. 
Dipeptide groups with lower mRNA levels are outlined in black.
**(C)** Protein expression from individual *PGK1-YFP* reporters measured by flow cytometry (Top). A control RFP reporter integrated at a different locus was also quantified (Bottom).
**(D)** Quantification of median YFP signal in **C** relative to the constitutively expressed RFP reporter.
Error bars represent standard error of the mean across 5 biological replicates.
GAAAGT (ES) is a frameshift control for GTGAAA (VK), and TTAAGT (LS) is a frameshift control for TTTAAG (FK).

<!-- \pagebreak -->

# Figure 3
<!-- ![](svg/fig3.svg){width=7.5in} -->

**Fig. 3: mRNA effects of dipeptide repeats require in-frame translation.**
**(A)** mRNA level of reporters encoding 320 different dipeptide repeats (excluding stop codon-containing dipeptides and pairs that did not pass read count cutoffs) compared between the correct reading frame (frame 0, vertical axis) and computationally-shifted +1, +2, or +3 reading frames (horizontal axes). 
*r* indicates Pearson correlation coefficient.
**(B)** Average mRNA level of reporters with indicated codons averaged across positions 1 and 2 of the codon pair library during normal growth and glucose depletion.
mRNA levels were median-normalized separately for each growth condition.
Error bars represent standard deviation over all variants containing the codon at either position.
**(C)** mRNA level of reporters encoding indicated dipeptides during normal growth and glucose deprivation. 
mRNA levels were median-normalized separately for each growth condition. 
Only dipeptide inserts with a minimum of 10 reads per barcode, 4 barcodes per insert, and low variability between barcodes are included here and in further analysis. 
Error bars represent standard deviation over barcodes linked to the indicated dipeptide repeat.
**(D)** Schematic of frameshifted codon pair library. 
Two base pairs were inserted upstream of the codon pair insert in the 4096 codon pair library to create a -1 frameshift in the codon pair. 
Libraries were integrated and sequenced as in Fig. 1A. 
**(E)** Average mRNA effects of individual codons in the -1 frameshifted library compared against codon stability coefficients [@Presnyak2015].
**(F)** mRNA levels of destabilizing dipeptides in the original in-frame library and in the -1 frameshifted library. 
Error bars calculated as in Fig. 3C.

<!-- \pagebreak -->

# Figure 4
<!-- ![](svg/fig4.svg){width=5.93in} -->

**Fig.4: Ribosome collision sensor Hel2 regulates the mRNA effects of dipeptide repeats.**  
**(A)** The RQC factors Hel2 and Syh1 are known to respond to collided ribosomes and trigger mRNA decay through Xrn1.
**(B)** The codon pair library in Fig. 1A was integrated into *hel2Δ* and *syh1Δ* cells, and mRNA levels were quantified as before.
**(C)** mRNA levels for dipeptide repeats compared between *hel2Δ* and wild-type cells.
mRNA levels were calculated as in Fig. 3C, and median-normalized separately for each strain.
Dipeptide repeats with residuals less than -2 from the linear regression line are marked in red.
**(D)** Same plot as in C, but for *syh1Δ* cells.
No dipeptide repeats are preferentially stabilized in *syh1Δ* cells with residuals less than -2 from the linear regression line.
**(E)** mRNA levels for wild-type mRNA-destabilizing dipeptides (from Fig. 3C) for *hel2Δ* and *syh1Δ* cells.
Error bars represent standard deviation over barcodes linked to the indicated dipeptide repeat.

<!-- \pagebreak -->

# Figure 5
<!-- ![](svg/fig5.svg){width=7.14in} -->

**Fig. 5: Deep mutational scanning identifies amino acids critical for mRNA effects of a destabilizing dipeptide repeat.**  
**(A)** Schematic of deep mutational scanning (DMS) of the FK dipeptide repeat. 
Each location in an (FK)~8~-encoding insert was randomized to all 64 codons. 
This 1024-variant library was cloned as a pool between *PGK1* and *YFP*, and genomically integrated into wild-type and *hel2Δ* strains.
Inserts were quantified in cDNA and genomic DNA by high throughput amplicon sequencing. 
**(B)** Pearson correlation between biological replicates for each variant in the (FK)~8~ DMS library.
**(C)** mRNA level for inserts containing the indicated amino acid mutation (vertical axis) at the indicated position (horizontal axis). 
mRNA levels are averaged across replicates and normalized within each genotype using spike-in control strains. 
The wild-type amino acid variant is marked with black crosses at each location.

<!-- \pagebreak -->

# Figure 6
<!-- ![](svg/fig6.svg){width=4.6in} -->

**Fig.6: Codon pair measurements predict effects of endogenous mRNA sequences.**  
**(A)** Schematic of endogenous sequence insert library. 
Each element in the library includes one of 1904 possible 48nt endogenous fragments. 
Each sequence is inserted in-frame between *PGK1* and *YFP*, and is followed by a random 24nt barcode without in-frame stop codons (median of 40 barcodes/insert).
The 70,000 variant library is genomically integrated into wild-type and *hel2∆* cells, and mRNA levels are quantified as in Fig. 1A.
**(B)** Distribution of mRNA levels for endogenous fragments vs codon pair inserts in wild-type cells.
**(C)** Correlation between CSC values calculated for each codon from the endogenous fragment library against CSC values derived from the codon pair library in wild-type cells.
Pearson correlation coefficient is reported as *r*. 
The CSC for each codon is calculated by taking the Pearson correlation coefficient between codon frequency of an insert and its steady state mRNA level.
**(D)** Same plot as in C, but for *hel2∆* cells.

\pagebreak

\nolinenumbers

# Supplementary Figures

\setcounter{page}{1}

## Figure S1
![](svg/supp_fig1.svg){width=5.47in}

**Plasmid and yeast codon pair library alignment statistics**  
**(A)** Distribution of barcodes per codon pair insert for the plasmid, cDNA, and genomic DNA libraries.
**(B)** Proportion of missing codon pair inserts in the plasmid library by GC content.
**(C)** Proportion of missing codon pair inserts in wild-type yeast grouped by hydrophobicity.
**(D)** mRNA level of reporters for each codon pair compared to its reversed codon pair.
Stop codon-containing pairs and pairs where the codon and reversed codon are the same are excluded.
*r* indicates Pearson correlation coefficient.
**(E)** Proportion of missing codon pair inserts grouped by hydrophobicity for the 139 inserts that are missing in all three strains.

\pagebreak

## Figure S2
![](svg/supp_fig2.svg){width=7.14in}

**(A)** Small-scale validation of codon pair screen. 
The mRNA levels for individually cloned codon pair inserts (as described in Fig. 2C, D) are plotted alongside mRNA levels for the same codon pairs taken from the full library. 
Error bars are calculated as in Fig. 3C.
mRNA levels for the small-scale library are normalized to the maximum value and mRNA levels for the full library are normalized to the median value.
**(B)** mRNA levels of codon pair inserts as a function of their GC content (left) or GC3 content (right) in wild-type cells.
Pearson correlation coefficient *r* and p-value *p* are shown for GC content and GC3 content (two-sided t-test).
**(C)** Same as in B, but for *hel2∆* and *syh1∆* cells.
**(D)** Effect of individually cloned codon pair inserts on peptide expression in *hel2∆* cells compared to wild-type.
Peptide expression is quantified as in Fig. 2D.
**(E)** mRNA level of individually cloned codon pair inserts in *hel2∆* cells compared to wild-type. 
mRNA levels and error bars are calculated as in Fig. 3C, except with maximum-normalization.

\pagebreak
## Figure S3
![](svg/supp_fig3.svg){width=7.55in}

**(A)** mRNA level of reporters encoding indicated dipeptides under normal conditions, during glucose deprivation, upon computational frameshifting, and in the -1 frameshifted library. 
mRNA levels were median-normalized separately for each condition.
Error bars represent standard deviation over barcodes linked to the indicated dipeptide repeat.
**(B)** mRNA levels for reciprocal dipeptide repeats not included in panel A.
**(C)** mRNA levels for reciprocal dipeptide repeats not included in Fig. 4E.

\pagebreak

## Figure S4
![](svg/supp_fig4.svg){width=5.8in}

**(A)** Average mRNA levels for reporters encoding a subset of wild-type destabilizing dipeptides (from Fig. 3C) along with various dipeptide controls in different RQC deletion strains.
Error bars represent standard error over codon pairs encoding the indicated dipeptide repeat.
**(B)** Distribution of mRNA levels for stop-containing pairs and wild-type destabilizing pairs (identified in Fig. 3C) compared to all other pairs during glucose depletion versus normal growth conditions.

\pagebreak

## Figure S5
![](svg/supp_fig5.svg){width=7.1in}

**(A)** Average difference between *upf1∆* cells and wild-type cells at each position for nonsense-encoding versus missense-encoding inserts.
mRNA levels are averaged across replicates and normalized within each genotype using spike-in control strains. 
Error bars represent standard error over all respective variants at each position.
**(B)** Same as in A, but for *hel2∆* cells.
**(C)** Violin plots of mRNA level across all amino acid variants at each location in wild-type and *hel2Δ* cells for both DMS replicates combined.
Stop codon variants are excluded from this analysis.
Any locations where distributions were not significantly different (p>0.01 by Wilcoxon rank sum test) are marked.

\pagebreak

## Figure S6
![](svg/supp_fig6.svg){width=3.93in}

**(A)** mRNA level of inhibitory codon pairs, as identified in Gamble et al., 2016, compared to the distribution of mRNA levels for all codon pairs in the library in wild-type cells.
Error bars represent standard deviation over barcodes linked to the indicated inhibitory codon pair.

\pagebreak

# Supplementary Tables

## Table S1

**List of plasmids used for this study**

\setmainfont[Scale=0.8]{Helvetica}

| Plasmid             | Genotype                                                           | Figure            | Source    |
| ------------------- | ------------------------------------------------------------------ | ----------------- | --------- |
| pHPSC16             | pUC-HO3-LEU2-pTDH3-mKate2-tCYC1                                    | parent            | @Park2019 |
| pHPSC417            | pAG306-GPD-3xFLAG-PGK1-YFP                                         | parent            | @Park2019 |
| pHPSC1120           | pAG306-pGPD-3xFLAG-PGK1-no-insert-R1-T7-YFP                        | parent, 2         | This work |
| pHPSC1114           | pAG306-pGPD-3xFLAG-PGK1_-1-BamHI-R1-T7-YFP                         | parent            | This work |
| pHPHS1142           | pAG306-pGPD-3xFLAG-PGK1-8×dicodon-endofragments-24ntbarc-R1-T7-YFP | 1, 2, 3, 4, 6     | This work |
| pHPSC1117           | pAG306-pGPD-3xFLAG-PGK1_-1-8×dicodon-endofrag-24ntbarc-R1-T7-YFP   | 3                 | This work |
| pHPSC1163/pHPSC1164 | pAG306-pGPD-3xFLAG-PGK1-FK_8dms-R1-T7-YFP                          | 5, Supplemental 5 | This work |
| pHPSC1160           | pAG306_pGPD-3xFLAG-PGK1-8×_minipool-24VNN-R1-T7-YFP                | Supplemental 2    | This work |
| pHPSC1144           | pAG306-pGPD-3xFLAG-PGK1-VK_GTGAAA-R1-T7-YFP                        | 2                 | This work |
| pHPSC1145           | pAG306-pGPD-3xFLAG-PGK1-FK_TTTAAG-R1-T7-YFP                        | 2                 | This work |
| pHPSC1146           | pAG306-pGPD-3xFLAG-PGK1-ES_GAAAGT-R1-T7-YFP                        | 2                 | This work |
| pHPSC1147           | pAG306-pGPD-3xFLAG-PGK1-LS_TTAAGT-R1-T7-YFP                        | 2                 | This work |
| pHPSC1149           | pAG306-pGPD-3xFLAG-PGK1-KK_AAGAAG-R1-T7-YFP                        | 2                 | This work |
| pHPSC1150           | pAG306-pGPD-3xFLAG-PGK1-KG_AAGGGA-R1-T7-YFP                        | 2                 | This work |
| pHPSC1159-sc2       | pAG306_pGPD_PGK1_spikein2_24ntbarc_R1_YFP                          | 5                 | This work |
| pHPSC1159-sc5       | pAG306_pGPD_PGK1_spikein5_24ntbarc_R1_YFP                          | 5                 | This work |
| pHPSC1165           | pAG306-pGPD-3xFLAG-PGK1-small_8×_dicodon-24ntbarc-R1-T7-YFP        | Supplemental 4    | This work |
| pHPSC1166           | pAG306-pGPD-3xFLAG-PGK1-small_8×_dicodon-24ntbarc-R1-T7-YFP        | Supplemental 4    | This work |
| pHPSC1167           | pAG306-pGPD-3xFLAG-PGK1-small_8×_dicodon-24ntbarc-R1-T7-YFP        | Supplemental 4    | This work |
| pHPSC1168           | pAG306-pGPD-3xFLAG-PGK1-small_8×_dicodon-24ntbarc-R1-T7-YFP        | Supplemental 4    | This work |
| pHPSC1169           | pAG306-pGPD-3xFLAG-PGK1-small_8×_dicodon-24ntbarc-R1-T7-YFP        | Supplemental 4    | This work |
| pHPSC1170           | pAG306-pGPD-3xFLAG-PGK1-small_8×_dicodon-24ntbarc-R1-T7-YFP        | Supplemental 4    | This work |
| pHPSC1171           | pAG306-pGPD-3xFLAG-PGK1-small_8×_dicodon-24ntbarc-R1-T7-YFP        | Supplemental 4    | This work |

\setmainfont[Scale=1]{Helvetica}

\pagebreak

## Table S2

**List of *S. cerevisiae* strains used for this study**

\setmainfont[Scale=0.8]{Helvetica}

| Strain   | Genotype, integrated plasmid             | Figure | Source        |
| -------- | ---------------------------------------- | ------ | ------------- |
| BY4741   | S288C, MATa HIS3Δ1 LEU2Δ0 MET15Δ0 URA3Δ0 | Parent | Thermo Fisher |
| scHP15   | BY4741, pHPSC16                          | Parent | @Park2019     |
| scHP519  | BY4741, HEL2::NAT                        | S4     | This work     |
| scHP520  | scHP15, HEL2::NAT                        | Parent | @Park2019     |
| scHP1527 | BY4741, XRN1::KanMX                      | S4     | This work     |
| scHP1528 | BY4741, CUE2::KanMX                      | S4     | This work     |
| scHP1408 | BY4741, HEL2::KanMX                      | Parent | This work     |
| scKC190  | BY4741, pHPSC1159-sc2                    | 5      | This work     |
| scKC191  | BY4741, pHPSC1159-sc5                    | 5      | This work     |
| scKC192  | BY4741, SYH1::KanMX                      | 4      | This work     |
| scKC193  | BY4741, NOT5::KanMX                      | S4     | This work     |
| scKC211  | scHP519, SYH1::KanMX                     | S4     | This work     |
| scAS10   | BY4741, UPF1::KanMX                      | S5     | This work     |

\setmainfont[Scale=1]{Helvetica}

\pagebreak

## Table S3

**List of oligos used for this study**

\setmainfont[Scale=0.8]{Helvetica}

| Oligo number | Oligo name                          | Oligo sequence                                                                                                 |
| ------------ | ----------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| oKC97        | HA                                  | GACGTCCCGGACTACGCG                                                                                             |
| oHP531       | 24nt_VNN_barcode_read1              | cacgacgctcttccgatctNNBNNBNNBNNBNNBNNBNNBNNBGAACAATTCTTCACCCT                                                   |
| oKC129       | VK_GTGAAA_rev                       | TCTCGTAGCATCACTCCGTC                                                                                           |
| oKC130       | VK_GTGAAA_fwd                       | GGGGTTAGCTTTCGCAATTC                                                                                           |
| oKC131       | FK_TTTAAG_rev                       | TGGAGTTGTGCTGGCTTCGT                                                                                           |
| oKC132       | FK_TTTAAG_fwd                       | TGTACATAAGAGGTCGTCAC                                                                                           |
| oKC133       | ES_GAAAGT_rev                       | AGAGCATTTGGGGCTGCCCG                                                                                           |
| oKC134       | ES_GAAAGT_fwd                       | CCAGTCGTCAGCCAATAGTG                                                                                           |
| oKC135       | LS_TTAAGT_rev                       | CACAAGCGAGGGGAGGGTTA                                                                                           |
| oKC136       | LS_TTAAGT_fwd                       | TGAGGAGCGCTAGGAGCAGT                                                                                           |
| oKC139       | KK_AAGAAG_rev                       | GCTGCAACAATGTATCTGAG                                                                                           |
| oKC140       | KK_AAGAAG_fwd                       | CAGTGTGAGAGTCCTGGTAG                                                                                           |
| oKC141       | KG_AAGGGA_rev                       | GTCGAATACGTATGTGGGGA                                                                                           |
| oKC142       | KV_AAGGGA_fwd                       | GGCTCCGTTGTTGATGCCTT                                                                                           |
| oKC123       | R1_oAS385_rev                       | CACGACGCTCTTCCGATCTTTCTTCACCCTTAGACAT                                                                          |
| oKC148       | 24nt_VNN_scoverhang                 | cacgacgctcttccgatctNNBNNBNNBNNBNNBNNBNNBNNBTTCTTCACCCTTAGACA                                                   |
| oHP534       | read2_scoverhang_fwd                | gtgactggagttcagacgtgtgctcttccgatctATGTCTAAGGGTGAAGAATTGTTC                                                     |
| oHP528       | PGK1_-1_HA_fwd                      | ggtgttgctttcttatccgaaaagaaaTGTACCCGTACGACGTCCCGGACTACGC                                                        |
| oHP529       | YFP_T7_rev                          | gattggaacaacaccagtgaacagctcctctcccttGTAATACGACTCACTATAG                                                        |
| oHP530       | HA_illumina_fwd                     | TACCCGTACGACGTCCCGGACTACGCGggatccatcagatcggaagagcgtcg                                                          |
| oHP558       | PGK1_HA_fwd                         | gtgttgctttcttatccgaaaagaaaTACCCGTACGACGTCCC                                                                    |
| oHP532       | HA_sc_overhang_fwd                  | TGTACCCGTACGACGTCCC                                                                                            |
| oKC225       | scoverhang_R1_ev                    | cacgacgctcttccgatctGAACAATTCTTCACCCTTAGACAT                                                                    |
| oAS135       | PCR_P7_R2_ix_24                     | CAAGCAGAAGACGGCATACGAGATGGTAGCGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS134       | PCR_P7_R2_ix_23                     | CAAGCAGAAGACGGCATACGAGATGAGTGGGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS133       | PCR_P7_R2_ix_22                     | CAAGCAGAAGACGGCATACGAGATCGTACGGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS132       | PCR_P7_R2_ix_21                     | CAAGCAGAAGACGGCATACGAGATGTTTCGGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS131       | PCR_P7_R2_ix_20                     | CAAGCAGAAGACGGCATACGAGATGTGGCCGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS130       | PCR_P7_R2_ix_19                     | CAAGCAGAAGACGGCATACGAGATGTGAAAGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS129       | PCR_P7_R2_ix_18                     | CAAGCAGAAGACGGCATACGAGATGTCCGCGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS128       | PCR_P7_R2_ix_17                     | CAAGCAGAAGACGGCATACGAGATGTAGAGGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS127       | PCR_P7_R2_ix_16                     | CAAGCAGAAGACGGCATACGAGATCCGTCCGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS126       | PCR_P7_R2_ix_15                     | CAAGCAGAAGACGGCATACGAGATATGTCAGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS125       | PCR_P7_R2_ix_14                     | CAAGCAGAAGACGGCATACGAGATAGTTCCGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS124       | PCR_P7_R2_ix_13                     | CAAGCAGAAGACGGCATACGAGATAGTCAAGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS123       | PCR_P7_R2_ix_12                     | CAAGCAGAAGACGGCATACGAGATCTTGTAGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS122       | PCR_P7_R2_ix_11                     | CAAGCAGAAGACGGCATACGAGATGGCTACGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS121       | PCR_P7_R2_ix_10                     | CAAGCAGAAGACGGCATACGAGATTAGCTTGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS120       | PCR_P7_R2_ix_9                      | CAAGCAGAAGACGGCATACGAGATGATCAGGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS119       | PCR_P7_R2_ix_8                      | CAAGCAGAAGACGGCATACGAGATACTTGAGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS118       | PCR_P7_R2_ix_7                      | CAAGCAGAAGACGGCATACGAGATCAGATCGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS117       | PCR_P7_R2_ix_6                      | CAAGCAGAAGACGGCATACGAGATGCCAATGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS116       | PCR_P7_R2_ix_5                      | CAAGCAGAAGACGGCATACGAGATACAGTGGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS115       | PCR_P7_R2_ix_4                      | CAAGCAGAAGACGGCATACGAGATTGACCAGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS114       | PCR_P7_R2_ix_3                      | CAAGCAGAAGACGGCATACGAGATTTAGGCGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS113       | PCR_P7_R2_ix_2                      | CAAGCAGAAGACGGCATACGAGATCGATGTGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS112       | PCR_P7_R2_ix_1                      | CAAGCAGAAGACGGCATACGAGATATCACGGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oAS111       | PCR_common_P5_R1                    | AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTC                                                              |
| oHP290       | PCR_P7_R2_ix_34                     | CAAGCAGAAGACGGCATACGAGATCATGGCGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oHP289       | PCR_P7_R2_ix_33                     | CAAGCAGAAGACGGCATACGAGATCAGGCGGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oHP288       | PCR_P7_R2_ix_32                     | CAAGCAGAAGACGGCATACGAGATCACTCAGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oHP287       | PCR_P7_R2_ix_31                     | CAAGCAGAAGACGGCATACGAGATCACGATGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oHP286       | PCR_P7_R2_ix_30                     | CAAGCAGAAGACGGCATACGAGATCACCGGGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oHP285       | PCR_P7_R2_ix_29                     | CAAGCAGAAGACGGCATACGAGATCAACTAGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oHP284       | PCR_P7_R2_ix_28                     | CAAGCAGAAGACGGCATACGAGATCAAAAGGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oHP283       | PCR_P7_R2_ix_27                     | CAAGCAGAAGACGGCATACGAGATATTCCTGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oHP282       | PCR_P7_R2_ix_26                     | CAAGCAGAAGACGGCATACGAGATATGAGCGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oHP281       | PCR_P7_R2_ix_25                     | CAAGCAGAAGACGGCATACGAGATACTGATGTGACTGGAGTTCAGACGTGTGCTC                                                        |
| oPN776       | P5_grafting_R                       | aatgatacggcgaccaccgagatctacac                                                                                  |
| oKC235       | R1_homology_umi_P5_RT               | gcgaccaccgagatctACACNNNNNNNACACTCTTTCCCTAcacgacgctcttccgatct                                                   |
| oKC254       | P7_ix_16_HA                         | caagcagaagacggcatacgagatCCGTCCCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC253       | P7_ix_15_HA                         | caagcagaagacggcatacgagatATGTCACCGTACGACGTCCCGGACTACGCG                                                         |
| oKC252       | P7_ix_14_HA                         | caagcagaagacggcatacgagatAGTTCCCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC251       | P7_ix_13_HA                         | caagcagaagacggcatacgagatAGTCAACCGTACGACGTCCCGGACTACGCG                                                         |
| oKC250       | P7_ix_17_HA                         | caagcagaagacggcatacgagatGTAGAGCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC249       | P7_ix_29_HA                         | caagcagaagacggcatacgagatCAACTACCGTACGACGTCCCGGACTACGCG                                                         |
| oKC248       | P7_ix_28_HA                         | caagcagaagacggcatacgagatCAAAAGCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC247       | P7_ix_27_HA                         | caagcagaagacggcatacgagatATTCCTCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC246       | P7_ix_26_HA                         | caagcagaagacggcatacgagatATGAGCCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC245       | P7_ix_25_HA                         | caagcagaagacggcatacgagatACTGATCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC244       | P7_ix_24_HA                         | caagcagaagacggcatacgagatGGTAGCCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC243       | P7_ix_23_HA                         | caagcagaagacggcatacgagatGAGTGGCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC242       | P7_ix_22_HA                         | caagcagaagacggcatacgagatCGTACGCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC241       | P7_ix_21_HA                         | caagcagaagacggcatacgagatGTTTCGCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC240       | P7_ix_20_HA                         | caagcagaagacggcatacgagatGTGGCCCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC239       | P7_ix_19_HA                         | caagcagaagacggcatacgagatGTGAAACCGTACGACGTCCCGGACTACGCG                                                         |
| oKC238       | P7_ix_18_HA                         | CAAGCAGAAGACGGCATACGAGATGTCCGCCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC232       | P7_ix_32_HA                         | caagcagaagacggcatacgagatCACTCACCGTACGACGTCCCGGACTACGCG                                                         |
| oKC231       | P7_ix_31_HA                         | caagcagaagacggcatacgagatCACGATCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC230       | P7_ix_30_HA                         | caagcagaagacggcatacgagatCACCGGCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC234       | P7_ix_34_HA                         | caagcagaagacggcatacgagatCATGGCCCGTACGACGTCCCGGACTACGCG                                                         |
| oKC233       | P7_ix_33_HA                         | caagcagaagacggcatacgagatCAGGCGCCGTACGACGTCCCGGACTACGCG                                                         |
| oAS385       | Pool 1                              | TGTACCCGTACGACGTCCCGGACTACGCGNNNNNNNNNNNNNNNNNNNNNNNN\newline NNNNNNNNNNNNNNNNNNNNNNNNATGTCTAAGGGTGAAGAATTGTTC |
| oKC224       | Pool 2                              | GACGTCCCGGACTACGCGNNNNNNNNNNNNNNNNNNNNNNN\newline NNNNNNNNNNNNNNNNNNNNNNNNNATGTCTAAGGGTGAAGAATTGTTC            |
| oKC265       | Pool 3                              | GACGTCCCGGACTACGCGNNNNNNNNNNNNNNNNNNNNNNN\newline NNNNNNNNNNNNNNNNNNNNNNNNNATGTCTAAGGGTGAAGAATTGTTC            |
| oKC147       | Pool 4                              | ACGACGTCCCGGACTACGCGNNNNNNNNNNNNNNNNNNNNNNN\newline NNNNNNNNNNNNNNNNNNNNNNNNNATGTCTAAGGGTGAAGAATTGTTC          |
| oPB354       | Standard Read 1 sequencing primer   | acactctttccctacacgacgctcttccgatct                                                                              |
| oRB80        | Standard Read 2 sequencing primer   | GTGACTGGAGTTCAGACGTGTGCTCTTCCGATCT                                                                             |
| oAS1638      | Custom Read 2 sequencing primer     | cgtgtgctcttccgatctATGTCTAAGGGTG                                                                                |
| oAS1637      | Custom Read 2 sequencing primer     | atctCCGTACGACGTCCCGGACTACGCG                                                                                   |
| oKC236       | Custom Read 2 sequencing primer     | CCGTACGACGTCCCGGACTACGCG                                                                                       |
| oKC256       | Custom i7 index sequencing primer   | CGCGTAGTCCGGGACGTCGTACGG                                                                                       |
| oPN705       | Standard i7 index sequencing primer | AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC                                                                             |
| oKC255       | Standard i5 index sequencing primer | agatcggaagagcgtcgtgTAGGGAAAGAGTGT                                                                              |

## Table S4

**Median-normalized mRNA levels (log2, arb. units) and standard deviation across barcodes for all codon pairs in wild-type cells, *hel2∆* cells, and *syh1∆* cells**

See separate CSV file.