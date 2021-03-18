## code to prepare `pal_penguin` dataset goes here

# Attach packages
library(usethis)
library(metajam)

# Save link location for the data package:
pal_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.46.3&entityid=54042081988cb0d3008771d1e5a071fe"

# Download the data package with metajam
pal_download <- download_d1_data(data_url = pal_url, path = tempdir())

# Read in data
pal_files <- read_d1_files(pal_download)
pal_penguin <- pal_files$data

usethis::use_data(pal_penguin, overwrite = TRUE)
