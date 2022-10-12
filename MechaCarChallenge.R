# Prep RStudio with dplyr library package
library(tidyverse)

# Deliverable 1:
# Import MechaCar_mpg.csv file used as source for analysis
mechampg <- read.csv(file='MechaCar_mpg.csv',header = TRUE, sep = ",")

# Generate multiple linear regression model to predict mpg of MechaCar dataframe
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechampg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechampg))

# Deliverable 2:
# Import Suspension_Coil.csv file used as source for analysis
suspcoil <- read.csv(file='Suspension_Coil.csv',header = TRUE, sep = ",")

# Total summary dataframe to obtain mean, median, variance, and SD of suspension coil's PSI
total_summary <- suspcoil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Lot Summary dataframe to obtain mean, median, variance, and SD of suspension coil's PSI per lot
lot_summary <- suspcoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Deliverable 3:
# T-test determine if PSI mean for combined lots is different from population mean
t.test(suspcoil$PSI, mu=1500)

# T-test determine if PSI mean for each lot is different from population mean
t.test(subset(suspcoil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)

t.test(subset(suspcoil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)

t.test(subset(suspcoil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)

