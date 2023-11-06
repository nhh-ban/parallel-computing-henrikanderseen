library(tictoc)
library(tweedie) 
library(ggplot2)
library(parallel)
library(doParallel)
library(foreach)
library(dplyr)

#Timer for task 1
tic.clearlog()
tic("Task 1 - Original solution")
source("scripts/test1.r")
toc()

#Timer for task 2
tic.clearlog()
tic("Task 2 - Lines 29-35 rewritten")
source("scripts/test2.r")
toc()

#Timer for task 3
tic.clearlog()
tic("Task 3 - Rewritten MTweedietests")
source("scripts/test3.r")
toc()

#printing the tictoc log 

printTicTocLog() %>%
  knitr::kable()

#The rewriting of "MTweedietest" proves to be the best because it 
#minimizes the time required to run the program by using the available CPU
#cores for parallel processing.