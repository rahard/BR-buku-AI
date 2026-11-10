all:
	xelatex -jobname="tentang-AI" 0-buku-AI-BR.tex

pdf:
	xelatex -jobname="tentang-AI" 0-buku-AI-BR.tex
	bibtex tentang-AI
	xelatex -jobname="tentang-AI" 0-buku-AI-BR.tex
	xelatex -jobname="tentang-AI" 0-buku-AI-BR.tex

bibtex:
	bibtex tentang-AI

epub: *.tex
	pandoc 0-buku-AI-BR.tex -o tentang-AI.epub --toc
