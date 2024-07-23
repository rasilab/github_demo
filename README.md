# GitHub is an effective platform for collaborative and reproducible laboratory research

## Getting Started
- This repository is an example to demonstrate the organizational principles discussed in [Chen et al., 2024](paperurl). Please refer to the text for more details.
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
    |--USER
        |--ISSUENUMBER_short_desc.md
```

### Analysis
```
analysis
    |--USER
        |--ANALYSIS_TYPE (eg. riboseq)
            |--ISSUENUMBER_short_desc
                |--data 
                    |--gencode
                        |--gencode.v26.gtf.gz
                    |--fastq
                        |--SRRnnnnnn.fastq.symbolic_link
                |--scripts
                    |--analyze_riboseq.ipynb
                    |--download_from_sra.ipynb
                    |--Snakefile
                |--annotations 
                    |--sample_annotations.csv
                |--tables
                    |--summary_table_1.csv
                    |--summary_table_2.csv
                |--figures
                    |--summary_figure_1.png
                    |--summary_figure_2.png
```

### Manuscripts
```
manuscripts
    |--USER
        |--manuscript_short_name
            |--maintext
                |--maintext.md
                |--bibliography.yaml
                |--template.tex
                |--pandoc-svg.py
                |--JOURNAL_STYLE.csl
                |--svg
                    |--figure-1.svg
                    |--figure-2.svg
            |--cover_letter
                |--cover_letter.md
                |--template.tex
                |--signature_image.png
                |--institution_logo.png
```

### Grants & Fellowships
```
grants
    |--USER
        |--YYYY_grant_short_name
            |--research_proposal.md
            |--bibliography.yaml
            |--template.tex
            |--pandoc-svg.py
            |--JOURNAL_STYLE.csl
            |--svg
                |--figure-1.svg
                |--figure-2.svg
            |--project_summary.md
            |--budget_justification.md
```

### Presentations
```
presentations
    |--USER
        |--YYYYMMDD_presentation_short_desc
            |--presentation.md
            |--STYLE.css
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
```docker pull ghcr.io/rasilab/pandoc-latex:1.3.0```

```docker run -i -d --name pandoc-latex -v $HOME:$HOME ghcr.io/rasilab/pandoc-latex:1.3.0```

- You can use the above container as a standalone environment to run any code from the command line. For example, to compile [manuscripts/rasi/paper_template/maintext/maintext.md][manuscripts/kchen/dicodon/maintext/maintext.md](https://github.com/rasilab/github_demo/tree/main/manuscripts/kchen/dicodon/maintext/maintext.md), run:

```docker exec -w $(pwd) pandoc-latex:1.3.0 pandoc maintext.md --filter=pandoc-svg.py --citeproc --template=template.tex --metadata-file=pandoc-metadata.yaml --pdf-engine=xelatex -o maintext.pdf```

- You can also use any of the above containers from within VSCode. For example, we commonly use the [R and Python](https://github.com/rasilab/r_python/pkgs/container/r_python) container for interactive analyses (e.g. Jupyter notebooks) in VSCode from our institution's cluster. See instructions [here](https://github.com/rasilab/r_python/pkgs/container/r_python#how-to-use-the-singularity-container-for-interactive-data-analysis-in-r-and-python) for how to set this up.

## Presentations

- Write your presentations as markdown files following the template [here](https://github.com/rasilab/github_demo/blob/main/presentations/kchen/20241214_thesis_defense/presentation.md).
- Use [vscode-reveal](https://marketplace.visualstudio.com/items?itemName=evilz.vscode-reveal) extension to open or export the markdown file as a reveal.js presentation.