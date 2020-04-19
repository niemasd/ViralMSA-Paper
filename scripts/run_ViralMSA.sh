#!/usr/bin/env bash
if [ "$#" -ne 1 ] ; then
    echo "USAGE: $0 <fasta>" ; exit 1
fi
ViralMSA.py -t 8 -s $1 -r HIV1  > $1.mafft.aln 2> $1.mafft.log
ViralMSA.py -s $1 -r HIV1 -e niemamoshiri@gmail.com -o $1.viralmsa > $1.viralmsa.log
