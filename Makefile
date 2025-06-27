
PY=python3
PELICAN=pelican
PELICANOPTS=

INPUTDIR=content
OUTPUTDIR=output
THEME=themes/monospace-gruvbox

publish:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s publishconf.py

html:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s pelicanconf.py

clean:
	rm -rf $(OUTPUTDIR)

github: html
	ghp-import -n -p -f $(OUTPUTDIR)
