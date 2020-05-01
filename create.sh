#!/bin/bash
# 
# Creates the PDF
#
echo "pdflatex 1/4"
pdflatex summary_header
bibtex thesis_summary > /dev/null
echo "pdflatex 2/4"
pdflatex summary_header > /dev/null
echo "pdflatex 3/4"
pdflatex summary_header > /dev/null
echo "pdflatex 4/4"
pdflatex summary_header

mv summary_header.pdf summary.pdf
