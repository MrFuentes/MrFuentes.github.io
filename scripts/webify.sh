#!/bin/bash

INPUT=$1
OUTPUT=$2
pandoc -o "../html/$OUTPUT.html" $INPUT
pandoc $INPUT --pdf-engine=xelatex -o "../pdfs/$OUTPUT.pdf"
python3 update_lists.py $OUTPUT
cat top.html html_list.html middle.html pdf_list.html bottom.html > ../index.html

exit 0
