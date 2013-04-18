PostTeX
=======

A LaTeX template for posters. 

Compiling the Source Code
-------------------------

Use `pdflatex` and `bibtex` to generate a presentation.
If You use texmaker, you can include the following command to automatically compile the sources: 
<code>pdflatex -synctex=1 -interaction=nonstopmode %.tex | bibtex % | pdflatex -synctex=1 -interaction=nonstopmode %.tex 
| pdflatex -synctex=1 -interaction=nonstopmode %.tex</code>

