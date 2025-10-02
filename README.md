# 🧬 Flujo de trabajo para ensamble de genomas a partir de lecturas Nanopore  

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)  
[![CI](https://github.com/tu_usuario/nanopore-assembly-workflow/actions/workflows/ci.yml/badge.svg)](https://github.com/tu_usuario/nanopore-assembly-workflow/actions/workflows/ci.yml)  
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1234567.svg)](https://doi.org/10.5281/zenodo.1234567)  

---

## 📌 Descripción
Este repositorio contiene un flujo de trabajo reproducible para **ensamblaje de genomas a partir de lecturas Nanopore**.  
Incluye pasos de **recorte de adaptadores con Porechop** y **ensamblaje de novo con Canu**, integrados en un script sencillo y probados con un dataset de ejemplo.

---

## ⚙️ Requisitos
- Linux / macOS  
- Dependencias instaladas: `porechop`, `canu`, `samtools`, `make`  
- Python 3.x (para actualizar changelog)

---

## 🚀 Ejecución
Colocar los archivos `*.fastq.gz` en el directorio y ejecutar:

```bash
bash scripts/canuscript.sh
```

Esto correrá el flujo con un dataset de ejemplo.

---

## 👩‍💻 Autores
- **Ing. Luis Alberto Meza Cova** — LABBIC  
- **Dra. Yalbi Itzel Balderas-Martínez** — LABBIC  

---

## 📖 Citación
Si utilizas este flujo de trabajo, por favor cítalo así:  

APA:  
Meza Cova, L. A., & Balderas-Martínez, Y. I. (2024). *Flujo de trabajo para ensamble de genomas a partir de lecturas Nanopore* (Version 1.0.0) [Software]. LABBIC. Zenodo. https://doi.org/10.5281/zenodo.1234567  

BibTeX:  
```bibtex
@software{meza_cova_balderas_2024_nanopore,
  author       = {Meza Cova, Luis Alberto and Balderas-Martínez, Yalbi Itzel},
  title        = {Flujo de trabajo para ensamble de genomas a partir de lecturas Nanopore},
  year         = {2024},
  version      = {1.0.0},
  publisher    = {LABBIC},
  doi          = {10.5281/zenodo.1234567},
  url          = {https://doi.org/10.5281/zenodo.1234567}
}
```

---

## 📜 Licencia
Este proyecto se distribuye bajo la **Licencia GPL v3**.  
Ver [LICENSE](LICENSE) para más detalles.

---

English version.

 🧬 Genome Assembly Workflow from Nanopore Reads  

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)  
[![CI](https://github.com/tu_usuario/nanopore-assembly-workflow/actions/workflows/ci.yml/badge.svg)](https://github.com/tu_usuario/nanopore-assembly-workflow/actions/workflows/ci.yml)  
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1234567.svg)](https://doi.org/10.5281/zenodo.1234567)  

---

## 📌 Description
This repository provides a reproducible workflow for **genome assembly from Nanopore sequencing reads**.  
It integrates **adapter trimming with Porechop** and **de novo assembly with Canu**, wrapped in a simple script and tested with a minimal dataset.

---

## ⚙️ Requirements
- Linux / macOS  
- Installed dependencies: `porechop`, `canu`, `samtools`, `make`  
- Python 3.x (for changelog updates)

---

## 🚀 Usage
Place your `*.fastq.gz` files in the directory and run:

```bash
bash scripts/canuscript.sh
```

This will run the pipeline using the example dataset.

---

## 👩‍💻 Authors
- **Ing. Luis Alberto Meza Cova** — LABBIC  
- **Dr. Yalbi Itzel Balderas-Martínez** — LABBIC  

---

## 📖 Citation
If you use this workflow, please cite it as follows:  

APA:  
Meza Cova, L. A., & Balderas-Martínez, Y. I. (2024). *Genome assembly workflow from Nanopore reads* (Version 1.0.0) [Software]. LABBIC. Zenodo. https://doi.org/10.5281/zenodo.1234567  

BibTeX:  
```bibtex
@software{meza_cova_balderas_2024_nanopore,
  author       = {Meza Cova, Luis Alberto and Balderas-Martínez, Yalbi Itzel},
  title        = {Genome assembly workflow from Nanopore reads},
  year         = {2024},
  version      = {1.0.0},
  publisher    = {LABBIC},
  doi          = {10.5281/zenodo.1234567},
  url          = {https://doi.org/10.5281/zenodo.1234567}
}
```

---

## 📜 License
This project is licensed under the **GPL v3 License**.  
See [LICENSE](LICENSE) for details.
