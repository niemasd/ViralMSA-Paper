#!/usr/bin/env bash
if [ "$#" -ne 2 ] ; then
    echo "USAGE: $0 <fasta> <ref_genome>" ; exit 1
fi
ViralMSA.py -s "$1" -r "$2" -e niemamoshiri@gmail.com -o "$1.viralmsa" > "$1.viralmsa.log"
