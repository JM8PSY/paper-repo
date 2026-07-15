# latexmk configuration for LuaLaTeX
$pdf_mode = 4;
$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$bibtex = 'bibtex %O %B';
$biber = 'biber %O %B';
$max_repeat = 5;
