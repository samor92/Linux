#!/bin/bash
awk -F ":" ' { print $1,$7;} ' /etc/passwd | sort -k2,2 | uniq -f1 -c > result.tex && echo "\end" >> result.tex && pdftex result.tex
