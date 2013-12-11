#!/bin/bash
cut -f 1,7 -d ":" /etc/passwd|tr ":" " "|sort -k2,2|uniq -f1 -c

