#!/bin/bash
# Author: Ing. Luis Alberto Meza Cova - LABBIC
# Co-author: Dra. Yalbi Itzel Balderas-Martinez - LABBIC

# Trimming con Porechop
mkdir resultados-ensamble

ls *fastq.gz > lista.txt

for i in $(cat lista.txt)
do 
  porechop -i $i  -o "porechop_$i"
done

rm lista.txt

mv porechop_* resultados-ensamble
mv scripts/canuscript.sh resultados-ensamble
cd resultados-ensamble

# Ensamble con canu
canu -p ensamble -d canu genomeSize=29k -trimmed -nanopore *.fastq.gz

mkdir trimmed
mv porechop_* trimmed
mv canuscript.sh ../
