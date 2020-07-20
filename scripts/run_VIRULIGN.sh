#!/usr/bin/env bash
if [ "$#" -ne 2 ] ; then
    echo "USAGE: $0 <fasta> <ref_genome>" ; exit 1
fi
(time virulign "$2" "$1" --exportKind GlobalAlignment --exportAlphabet Nucleotides > "$1.virulign.aln" 2> "$1.virulign.log") 2> "$1.virulign.time.txt"
