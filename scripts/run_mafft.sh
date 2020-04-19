#!/usr/bin/env bash
if [ "$#" -ne 1 ] ; then
    echo "USAGE: $0 <fasta>" ; exit 1
fi
mafft --thread 8 $1 > $1.mafft.aln 2> $1.mafft.log
