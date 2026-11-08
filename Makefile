all:
	xelatex 0-buku-AI-BR.tex

epub: *.tex
	pandoc 0-buku-AI-BR.tex -o buku-AI.epub --toc
