## Compile pdf
- In the same directory as the markdown file you want to convert
- ```singularity pull docker://ghcr.io/rasilab/pandoc-latex:1.3.0```
- ```singularity exec pandoc-latex_1.3.0.sif /bin/bash```
- ```pandoc file.md --citeproc --template=template.tex --metadata-file=pandoc-metadata.yaml --filter=pandoc-svg.py --pdf-engine=xelatex -o file.pdf```