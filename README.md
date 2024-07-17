# GitHub is an effective platform for collaborative and reproducible laboratory research

## Getting Started
- This repository is an example to demonstrate the organizational principles discussed in [Chen et al., 2024](paperurl). 
- Open an Issue to discuss ideas, experiments, analyses, or literature.
- Create Issues for Literature, Ideas, Experiments, Analyses.
- Add experiments, analyses, grants, presentations and manuscripts into `user` subfolder inside each folder.
- Use the repository for storing all your work except large raw data files.

## Repository Organization
- Experiments, Analyses, Grants, Presentations, and Manuscripts go into separate folders on their own.
- Each project contributor creates a sub-folder within the above folders to store their work.
- Do not store data files in the repository. Instead, create symbolic links from where the data is stored (e.g. server or cloud-based storage).
 
 ### Experiments
```
experiments
    |--USER
        |--ISSUENUMBER_EXPNUMBER_short_desc.md
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
                    |--summary_figure_1.csv
                    |--summary_figure_2.csv
```

### Manuscripts
```
manuscripts
    |--USER
        |--YYYY_manuscript_short_name
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

- Install Docker, VSCode, and the VSCode Remote Development Extension pack as described [here](https://code.visualstudio.com/docs/remote/containers#_getting-started).
- Use Docker to pull the containers necessary for your analyses. Example containers from our registry are here:
  - [R](https://github.com/rasilab/r/pkgs/container/r)
  - [Python](https://github.com/rasilab/python/pkgs/container/python)
  - [R and Python](https://github.com/rasilab/r_python/pkgs/container/r_python)
  - [Pandoc-latex](https://github.com/rasilab/pandoc-latex/pkgs/container/pandoc-latex)
- To start a container from the command line on your computer, do:
```docker pull ghcr.io/rasilab/pandoc-latex:1.3.0```

```docker run -i -d --name pandoc-latex -v $HOME:$HOME ghcr.io/rasilab/pandoc-latex:1.3.0```

- You can use the above container as a standalone environment to run any code from the command line. For example, to compile [manuscripts/rasi/paper_template/maintext/maintext.md](manuscripts/rasi/paper_template/maintext/maintext.md), run:

```docker exec -w $(pwd) pandoc-latex:1.3.0 pandoc maintext.md --filter=pandoc-svg.py --citeproc --template=template.tex --metadata-file=pandoc-metadata.yaml --pdf-engine=xelatex -o maintext.pdf```

### Remote tunnels
- See instructions [here](https://github.com/rasilab/r_python/pkgs/container/r_python) for how to set up remote tunnels to perform interactive analyses within a container in VSCode.

## Presentations

- Write your presentations as markdown files following the template here.
- Use [vscode-reveal](https://marketplace.visualstudio.com/items?itemName=evilz.vscode-reveal) extension to open or export the markdown file as a reveal.js presentation.