builds:
	mkdir -p builds

builds/%.pdf: fiches/%.tex builds agregfiche.cls
	pdflatex --output-dir=builds fiches/$*.tex 

builds/%.pdf: %.tex builds agregfiche.cls
	pdflatex --output-dir=builds $*.tex

all: builds
	for file in ```ls *.tex```; do \
		pdflatex --output-dir=builds $$file; \
	done 

.PHONY: clean 

clean:
	# TODO: sur linux / mac utiliser la commande "trash"
	# qui gère la corbeille pour éviter les accidents...
	rm -f *.aux
	rm -f builds/*.aux
	rm -f *.log
	rm -f builds/*.log
	rm -f *.synctex.gz
	rm -f builds/*.synctex.gz

