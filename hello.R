# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

        hello <- function() {
          print("Hello World!")
           }
############################

#     I am unsure of where I am supposed to be inputting code, doing this and in console just in case


#install/read in libraries

     setwd("~/MyFirstRDataPack")

     install.packages(c("usethis", "devtools", "roxygen2"), repos = "http://cran.us.r-project.org")

     library(devtools)
     library(roxygen2)
     library(usethis)


# Add Clean Data

     usethis::use_data_raw()
            # Creates a folder named "data-raw"
     anscombe_set1 <- anscombe[c(1,5)]
            # Data wrangled
     use_data(anscombe_set1, overwrite = TRUE)
            # Creates a folder named "data" with 'anscombe_set1' in it


#####################################################################################################

#Try w your own data

     install.packages("tidyverse", repos = "http://cran.us.r-project.org")

     library(tidyverse)

     census80_raw <- readr::read_csv("data-raw/1980_RawCount_Demography.csv")

     Dem1980 <- census80_raw %>% mutate(totpop1980Pr = (TotPop80/3005072)*100, hisplatPr80 = (HispLat80/TotPop80)*100, whitePr80 = (white80/TotPop80)*100, aframPr80 = (black80/TotPop80)*100, asianPr80 = (asian80/TotPop80)*100, AmIndAKNatPr80 = (AmIndAKNa80/TotPop80)*100) %>% select(GISJOIN, TotPop80, totpop1980Pr, hisplatPr80, whitePr80, aframPr80, asianPr80, AmIndAKNatPr80)
            # standardize data
     usethis::use_data(Dem1980, overwrite = TRUE)

#####################################################################################################

#Check!

#
