## RAGE: Regression after Gene Expression

### Read in data from raw datafile csv and save in rds format

library(tidyverse)
library(fs)
###fs package - function for writing down paths and files - does file and directory handling

cache    <- "C:/Users/crf7/OneDrive - University of Leicester/PhD Genetic Epidemiology/Year 2/Training/GitCourse/RAGE/Data/cache"
rawdata  <- "C:/Users/crf7/OneDrive - University of Leicester/PhD Genetic Epidemiology/Year 2/Training/GitCourse/RAGE/Data/RawData"

##### Using this data as the rawdata file

url <- "https://ftp.ncbi.nlm.nih.gov/geo/series/GSE168nnn/GSE168753/suppl/GSE168753_processed_data.csv.gz"

############### Create output files from this script ##########

datRDS <- path(rawdata, "GSE168753_processed_data.csv.gz")
expRDS <- path(cache,   "expression.rds")
patRDS <- path(cache,   "patients.rds")
valRDS <- path(cache,   "validation.rds")
trnRDS <- path(cache,   "training.rds")

