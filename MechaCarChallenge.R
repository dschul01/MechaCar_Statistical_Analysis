# Prep RStudio with dplyr library package
library(tidyverse)

# Import MechaCar_mpg.csv file used as source for analysis
mechampg <- read.csv(file='MechaCar_mpg.csv',header = TRUE, sep = ",")

# Generate multiple linear regression model to predict mpg of MechaCar dataframe
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechampg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechampg))
