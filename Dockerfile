FROM rocker/rstudio:devel

RUN apt-get update\
 && apt-get upgrade -y\
 && apt-get install qpdf -y\
 && apt-get install ssh -y\
 && apt-get install texlive-full -y\
 && r -e "utils::install.packages('BiocManager')"\
 && r -e "BiocManager::install(ask = FALSE, version = 'devel')"\
 && r -e "BiocManager::install('devtools')"\
 && r -e "BiocManager::install('tidyverse')"\
 && r -e "BiocManager::install('tidymodels')"
