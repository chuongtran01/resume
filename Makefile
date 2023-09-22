resume:
	pdflatex ChuongTran_Resume.tex
	pdflatex ChuongTran_Resume.tex 
	open ChuongTran_Resume.pdf &
	rm -f *.aux *.log *.toc *.blg *.out *.bbl
