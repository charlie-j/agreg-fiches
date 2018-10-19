builds:
	mkdir -p builds

builds/%.pdf: fiches/%.tex builds agregfiche.cls
	pdflatex --output-dir=builds fiches/$*.tex 

builds/%.pdf: %.tex builds agregfiche.cls
	pdflatex --output-dir=builds $*.tex

all: builds refs.tex dev.tex
	for file in ```find . -maxdepth 1 -type f -name "*.tex" -not -name "template.tex" -not -name "refs.tex" -not -name "dev.tex"```; do \
		pdflatex --output-dir=builds $$file; \
	done 

.PHONY: clean 

refs.tex: $(wildcard refs/*.tex) 
	 find refs -type f -name "*.tex" -not -name "*dummy*" | awk '{printf "\\item \\input{%s}\n", $$1}' > refs.tex

dev.tex: $(wildcard dev/*.tex) 
	 find dev -type f -name "*.tex" -not -name "*dummy*" | awk '{printf "\\item \\input{%s}\n", $$1}' > dev.tex

clean:
	# TODO: sur linux / mac utiliser la commande "trash"
	# qui gère la corbeille pour éviter les accidents...
	rm -f *.aux
	rm -f builds/*.aux
	rm -f *.log
	rm -f builds/*.log
	rm -f *.synctex.gz
	rm -f builds/*.synctex.gz

