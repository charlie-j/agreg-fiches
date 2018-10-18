builds:
	mkdir -p builds

builds/%.pdf: fiches/%.tex builds agregfiche.cls
	pdflatex --output-dir=builds fiches/$*.tex 

builds/%.pdf: %.tex builds agregfiche.cls
	pdflatex --output-dir=builds $*.tex

# TODO: faire une commande qui build tout ce qu'on peut 
# trouver dans le dossier fiches

.PHONY: clean 

clean:
	# TODO: sur linux / mac utiliser la commande "trash"
	# qui gère la corbeille pour éviter les accidents...
	rm builds/*.aux
	rm builds/*.log
