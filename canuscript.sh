#!/bin/bash
# Author: Ing. Luis Alberto Meza Cova & Dra. Yalbi Itzel Balderas-Martínez - LABBIC

# Trimming con Porechop 
mkdir -p resultados-ensamble
ls *fastq.gz > lista.txt

for i in $(cat lista.txt); do
  porechop -i "$i" -o "porechop_$i"
done

rm lista.txt
mv porechop_* resultados-ensamble
mv canuscript.sh resultados-ensamble
cd resultados-ensamble

# Ensamble con Canu
canu -p ensamble -d canu genomeSize=29k -trimmed -nanopore *.fastq.gz

mkdir trimmed
mv porechop_* trimmed
mv canuscript.sh ../
