# To create the container used below, run the following once per computer:
# docker run -i -d --name test -v $HOME:$HOME ghcr.io/rasilab/project_repo
docker exec -w /workspaces/rqc_aggregation_aging/manuscripts/dicodon/maintext naughty_kapitsa pandoc maintext.md --filter=pandoc-svg.py --citeproc --template=template.tex --metadata-file=pandoc-metadata.yaml --pdf-engine=xelatex -o maintext.pdf