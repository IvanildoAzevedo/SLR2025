# Research artifacts

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15511661.svg)](https://doi.org/10.5281/zenodo.15511661)

<br>

## 📋 Overview

This repository contains the dataset, scripts, and documentation for the paper **Reimagining Studies' Replication: A Validity-Driven Analysis of Threats in Empirical Software Engineering** published at _Proceedings of the 39th Brazilian Symposium on Software Engineering - Insightful Ideas and Emerging Results (IIER '25)_ in 2025.

The study is a partial result of a Systematic Literature Review (SLR) that investigates how replication studies in Software Engineering address Threats to Validity (TTVs) of original and replication studies. It examines how these threats are identified and reported, as well as the implications for the reliability and generalizability of replicated results.

<br>

## 📂 Repository Structure

```
SLR2025/
├── data/
│   └── material/
│   └── scripts/
│   └── SLR-data/
├── LICENSE
├── LICENSE-MIT
├── Paper.pdf
├── README.md
```
### 📂 data/
Contains all materials, data, and scripts used or produced in the study.

### 📂 [data/material/](data/material/materials.md)
Research planning material: search string, inclusion/exclusion criteria, SCOPUS exports, and threats to validity.

### 📂 [data/scripts/](data/scripts/scripts.md)
R scripts and supporting files for generating figures and performing statistical analysis.

### 📂 [data/SLR-data/](data/SLR-data/data-details.md)
Extracted data and quantitative summaries from the SLR process.

### 📄 [Paper.pdf](Paper.pdf)
The full paper, related to this artifact, describing the study's goals, methodology, analysis, and findings.

### 📄 [LICENSE](LICENSE) / [LICENSE-MIT](LICENSE-MIT)
Define the usage terms for the data and scripts.

### 📄 README.md
This file — includes an overview, usage guide, and citation instructions.

<br>

## 💾 Storage Requirements
The total size of this repository is under 20 MB. No special storage requirements are needed.

<br>

## 🛠 How to Run the Scripts

### ⚙️ Requirements

To run the scripts, you need:

- [R](https://cran.r-project.org/) installed on your machine.

- [RStudio](https://www.rstudio.com/products/rstudio/download/) (optional, but recommended).


### 🖥️ System Requirements

No specific hardware requirements are needed to execute the scripts.


### 🛠 Steps to Run

1. Download and install **R**.
2. Download and install **RStudio** (optional).
3. Download an R script from the [scripts folder](data/scripts/scripts.md).
4. Open an R script.
  - Open only one script at a time.
6. Run the script using:
  - **Mac**: `Cmd + Shift + Enter`
  - **Windows/Linux**: `Ctrl + Shift + Enter`
5. The output (e.g., plots) will be saved in the same folder as the script, using the same filename.

> 💡 Each script generates one figures used in the [paper](Paper.pdf).

> 💡 For the Matthews Correlation Coefficient (MCC)
script, ensure both the data file and R script are in the same directory.

<br>

## 📄 Citation

### 📝 Citing the Paper

If you use the data or findings from this repository, please cite the paper:

```bibtex
@inproceedings{AzevedoEtAl2025,
    author = {Ivanildo Azevedo and 
            Ana Paula Vasconcelos and 
            Eudis Teixeira and 
            Sergio Soares},
    title = {Reimagining Studies’ Replication: A Validity-Driven Analysis of Threats in Empirical Software Engineering},
    booktitle = {Proceedings of the 39th Brazilian Symposium on Software Engineering - Insightful Ideas and Emerging Results (IIER '25)},
    location = {Recife/PE},
    year = {2025},
    issn = {},
    pages = {},
    publisher = {SBC},
    address = {Porto Alegre, RS, Brasil},
    doi = {},
    url = {}
}
```

### 📦 Citing the Artifact

If you prefer to cite only the archived artifact at Zenodo:

```bibtex
@misc{AzevedoEtAl2025,
  author       = {Ivanildo Azevedo and
                  Ana Paula Vasconcelos and
                  Eudis Teixeira and
                  Sergio Soares},
  title        = {Research Artifacts of Reimagining Studies’ Replication: 
                A Validity-Driven Analysis of Threats in Empirical Software Engineering},
  year         = {2025},
  publisher    = {Zenodo},
  doi          = {10.5281/zenodo.15511661},
  url          = {https://doi.org/10.5281/zenodo.15511661}
}
```

<br>

## 🛡️ Ethical and Legal Considerations

This study was conducted strictly for academic research purposes and adheres to institutional research ethics guidelines. No personal or sensitive data were collected.

<br>

## 📜 License

- **R scripts** are licensed under the [MIT License](LICENSE-MIT).
- **Research data and artifacts** are licensed under the [CC BY 4.0 License](LICENSE).