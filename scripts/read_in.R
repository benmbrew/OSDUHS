# this script will read in osduhs data clean

# load libraries
library(foreign)
library(tidyr)
library(readr)
library(dplyr)
library(ggplot2)

# read in data 
temp_dat <- read.spss(file = '../data/osduhs.sav',
                      use.value.labels = T,
                      to.data.frame = T,
                      trim.factor.names = T,
                      trim_values = F,
                      use.missings = T)


# get column names
names(temp_dat) <- attr(temp_dat,"variable.labels")

# clean names
names(temp_dat) <- trimws(names(temp_dat), which = 'both')
