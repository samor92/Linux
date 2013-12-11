#!/bin/bash
>tmp.tex
awk ' BEGIN { oq="{"
	      eq="}"
	      print "\documentclass" oq "article" eq "\n",
		    "\\begin" oq "document" eq "\n",
   		    "\\begin" oq "table" eq "\n",
	            "\\begin" oq "tabular" eq oq "c c" eq} ' >> tmp.tex
awk -F: ' !/\/home/  {print $1 " & " $7 "\\\\"} ' /etc/passwd | sort -k3,3 >> tmp.tex
#Все равно никто не читает комменты :D
awk ' BEGIN { oq="{"
	      eq="}"
	      print "\\end" oq "tabular" eq "\n",
	            "\\end" oq "table" eq "\n",
		    "\\end" oq "document" eq }' >> tmp.tex
pdflatex tmp.tex

