#!/bin/bash
grep -v "/home" /etc/passwd | cut -f1,7 -d ':' | tr ":" " " | sort -k2,2;

