#!/usr/bin/env perl
$latex            = 'uplatex -synctex=1 -halt-on-error';
$latex_silent     = 'uplatex -synctex=1 -halt-on-error -interaction=batchmode';
$lualatex         = 'lualatex -synctex=1 -interaction=nonstopmode -shell-escape %S';
$xelatex          = 'xelatex -synctex=1 -shell-escape -8bit';
$bibtex           = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode	  = 4; # generates pdf via dvipdfmx

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

# Use Skim as a previewer
#$pdf_previewer    = "open -ga /Applications/Skim.app";

$clean_ext = "ltjruby run.xml bbl bcf blg ";

# Output Dir

$aux_dir = "aux/";
#out_dir = "out/";
