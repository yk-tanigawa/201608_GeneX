#!/bin/sh

#$ -S /bin/sh
#$ -cwd
#$ -V
#$ -q all.q

# Mail at beginning/end/on suspension
#$ -M geneX@cshl.edu
#$ -m bes

echo hello
