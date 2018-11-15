thesis: main.pdf

zip:

	git archive master --format=zip > scuthesis-`git describe master`-basic.zip


main.pdf: main.tex    

	pdflatex --synctex=1 -interaction=nonstopmode -file-line-error -pdf main

	# bibtex main
	# bibtex main

	pdflatex --synctex=1 -interaction=nonstopmode -file-line-error -pdf main

	pdflatex --synctex=1 -interaction=nonstopmode -file-line-error -pdf main

clean:

	rm -v *.aux *.log *.toc *.ind *.gls *.glo *.idx *.ilg *.out *.bbl *.thm *.blg *.lot *.lof *.dvi *.gz