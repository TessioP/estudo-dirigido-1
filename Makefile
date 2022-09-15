all: compile clean

compile:
	# @rm -f *.aux *.bbl *.blg *.idx *.ind *.lof *.lot *.out *.toc *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.fls *.log *.fdb_latexmk *.nlo *.ilg *.nls *.nlg *.bcf *.lol *.run.xml *.synctex.gz *.log *.ptc *.glsdefs main-blx.bib
	# @find . -type f -name '*.aux' -delete
	@echo "compiling document..."
	pdflatex -synctex=1 -interaction=nonstopmode -file-line-error $(filename).tex
	# bibtex $(filename)
	# makeglossaries $(filename)
	# makeindex $(filename).nlo -s nomencl.ist -o $(filename).nls -t $(filename).nlg
	pdflatex -synctex=1 -interaction=nonstopmode -file-line-error $(filename).tex
	pdflatex -synctex=1 -interaction=nonstopmode -file-line-error $(filename).tex
	pdflatex -synctex=1 -interaction=nonstopmode -file-line-error $(filename).tex
	@echo "document has been successfully generated!"

clean:
	@echo -n "removing auxiliaries files...\n"
	@rm -f *.aux *.bbl *.blg *.idx *.ind *.lof *.lot *.out *.toc *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.fls *.log *.fdb_latexmk *.nlo *.ilg *.nls *.nlg *.bcf *.lol *.run.xml *.synctex.gz *.log *.ptc *.glsdefs main-blx.bib
	@find . -type f -name '*.aux' -delete
