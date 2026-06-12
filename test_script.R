library(dplyr)
library(readr)  
library(rgbif) 


tree_file <- file.path("data", "dwca-natuurpunt-natagora-checklist-v1.3", "taxon.txt")

long_checklist <- readr::read_delim(tree_file)

test <- long_checklist %>%
  name_backbone_checklist(bucket_size = 200, sleep = 5)
