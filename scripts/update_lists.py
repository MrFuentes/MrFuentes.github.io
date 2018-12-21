#!/usr/bin/env python3

import sys

def main():
    filename = sys.argv[1]
    pdf = open("pdf_list.html", "a")
    pdf.write('<li> <a href="./pdfs/{}.pdf">{}</a> </li> \n'.format(filename,filename))
    pdf.close()
    html = open("html_list.html", "a")
    html.write('<li> <a href="./html/{}.html">{}</a> </li> \n'.format(filename, filename))
    html.close()

if __name__ == "__main__":
    main()
