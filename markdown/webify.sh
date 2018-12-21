#!/bin/bash

INPUT=$1
OUTPUT=$2
pandoc -o "$OUTPUT.html" $INPUT
pandoc $INPUT --pdf-engine=xelatex -o "../pdfs/$OUTPUT.pdf"

exit 0
