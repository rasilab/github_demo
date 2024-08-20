# GitHub is an effective platform for collaborative and reproducible laboratory research

## Getting Started
- This repository is an example to demonstrate the organizational principles discussed in [Chen et al., 2024](https://arxiv.org/abs/2408.09344).
- In each project's repository, open an Issue to discuss ideas, experiments, analyses, or literature.
  - Create Issue templates (e.g. for Literature, Ideas, Experiments, Analyses) to streamline this process.

## Repository Organization
- Experiments, Analyses, Grants, Presentations, and Manuscripts go into separate folders.
- Each project contributor creates a sub-folder within the above folders to store their work.
- Do not store data files in the repository. Instead, create symbolic links from where the data is stored (e.g. server or cloud-based storage) so it can be easily accessed in the future.
- The described structure allows all users to be able push to the ```main``` branch without introducing merge conflicts, so we do not generally find added benefit in using branches.

### Experiments

```
experiments
    |--LABMEMBER_A
        |--ISSUENUMBER_1_lab_notebook_ngs_short_desc.md
    |--LABMEMBER_B
        |--ISSUENUMBER_2_lab_notebook_flow_short_desc.md
```

### Analysis

```
analysis
    |--LABMEMBER_A
        |--ANALYSIS_TYPE (eg. NGS)
            |--ISSUENUMBER_1_short_desc
                |--data 
                    |--data_type_1 (eg. genome)
                        |--chromosome.fasta
                    |--data_type_2 (eg. sra)
                        |--SRRnnnnnn.fastq
                |--scripts
                    |--analyze_in_R_python.ipynb
                    |--snakemake_workflow.smk
                    |--download_data_from_remote_folder.sh
                |--annotations 
                    |--sample_metadata.csv
                |--tables
                    |--processed_summary_table.csv
                |--figures
                    |--summary_fig.png
    |--LABMEMBER_B
        |--ANALYSIS_TYPE (eg. flow)
            |--ISSUENUMBER_2_short_desc
                |--data 
                    |--data_type_1 (eg. facs)
                        |--sample_1.fcs
                        |--sample_2.fcs
                |--scripts
                    |--analyze_in_R_python.ipynb
                |--annotations 
                    |--sample_metadata.csv
                |--tables
                    |--processed_summary_table.csv
                |--figures
                    |--summary_fig.png
```

### Manuscripts

```
manuscripts
    |--LABMEMBER_A
        |--manuscript_short_name
            |--maintext
                |--maintext.md
                |--bibliography.yaml
                |--latex_template.tex
                |--bibliography_style.csl
                |--svg
                    |--figure_1.svg
                    |--figure_2.svg
            |--cover_letter
                |--cover_letter.md
                |--latex_template.tex
```


### Grants & Fellowships

```
grants
    |--LABMEMBER_A
        |--YYYY_grant_short_name
            |--research_proposal.md
            |--bibliography.yaml
            |--latex_template.tex
            |--bibliography_style.csl
            |--svg
                |--figure_1.svg
                |--figure_2.svg
            |--project_abstract.md
            |--budget_justification.md
```

### Presentations

```
presentations
    |--LABMEMBER_A
    |--USER
        |--YYYYMMDD_presentation_short_desc
            |--presentation.md
            |--html_style.css
            |--svg
                |--figure-1.svg
                |--figure-2.svg
```

## Software Installation

- Install [Docker](https://docs.docker.com/engine/install/) and [VSCode](https://code.visualstudio.com/download).
- In VSCode, install the [Remote Tunnels](https://code.visualstudio.com/docs/remote/tunnels) extension.
- Use Docker to pull the containers necessary for your analyses. Commonly used containers from our registry include:
  - [R](https://github.com/rasilab/r/pkgs/container/r)
  - [Python](https://github.com/rasilab/python/pkgs/container/python)
  - [R and Python](https://github.com/rasilab/r_python/pkgs/container/r_python)
  - [Pandoc-latex](https://github.com/rasilab/pandoc-latex/pkgs/container/pandoc-latex)
- To start a container from the command line on your computer, do:

```bash
docker pull ghcr.io/rasilab/pandoc-latex:1.3.0
docker run -i -d --name pandoc-latex -v $HOME:$HOME ghcr.io/rasilab/pandoc-latex:1.3.0
```

- You can use the above container as a standalone environment to run any code from the command line. For example, to compile [manuscripts/kchen/dicodon/maintext/maintext.md](https://github.com/rasilab/github_demo/tree/main/manuscripts/kchen/dicodon/maintext/maintext.md), run:

```bash
docker exec -w $(pwd) pandoc-latex:1.3.0 pandoc maintext.md --filter=pandoc-svg.py --citeproc --template=template.tex --metadata-file=pandoc-metadata.yaml --pdf-engine=xelatex -o maintext.pdf
```

- You can also use any of the above containers from within VSCode. For example, we commonly use the [R and Python](https://github.com/rasilab/r_python/pkgs/container/r_python) container for interactive analyses (e.g. Jupyter notebooks) in VSCode from our institution's cluster. See instructions [here](https://github.com/rasilab/r_python/pkgs/container/r_python#how-to-use-the-singularity-container-for-interactive-data-analysis-in-r-and-python) for how to set this up.

## Presentations

- Write your presentations as markdown files following the template [here](https://github.com/rasilab/github_demo/blob/main/presentations/kchen/20241214_thesis_defense/presentation.md).
- Use [vscode-reveal](https://marketplace.visualstudio.com/items?itemName=evilz.vscode-reveal) extension to open or export the markdown file as a reveal.js presentation.
