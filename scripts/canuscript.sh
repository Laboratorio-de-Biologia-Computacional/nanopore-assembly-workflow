#!/bin/bash
# Flujo de trabajo para ensamble de genomas a partir de lecturas Nanopore
# Author: Ing. Luis Alberto Meza Cova - LABBIC
# Co-author: Dra. Yalbi Itzel Balderas-Martinez - LABBIC
#
# Uso: colocar archivos *.fastq.gz en el directorio actual y ejecutar:
#   bash canuscript.sh

set -euo pipefail

# --- Paso 1: Trimming con Porechop ---
echo ">>> Paso 1: Trimming de adaptadores con Porechop..."
mkdir -p resultados-ensamble/trimmed

for f in *.fastq.gz; do
  echo "  Procesando: $f"
  porechop -i "$f" -o "resultados-ensamble/trimmed/porechop_$f"
done

# --- Paso 2: Ensamble con Canu ---
echo ">>> Paso 2: Ensamble de novo con Canu..."
canu -p ensamble -d resultados-ensamble/canu \
  genomeSize=29k -trimmed \
  -nanopore resultados-ensamble/trimmed/*.fastq.gz

echo ">>> Pipeline completado. Resultados en resultados-ensamble/"
