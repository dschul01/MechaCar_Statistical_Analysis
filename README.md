# MechaCar_Statistical_Analysis
Utilize R to assist automotive manufacturing 

## Purpose

The purpose of this project is to utilize R in reviewing automotive production data to provide insights which may help the MechaCar manufacturing team.  R is used to perform multiple linear regression analysis
to identify which variables predict mpg, provide summary statistics on production data, and to run t-tests to determine if manufacturing lots are consistent with the population.  Additionally, a statistical study
design on an approach for comparing performance of MechaCar vehicles against competitors is provided.


## Linear Regression to Predict MPG

Multiple linear regression analysis was performed to determine if any of a number of metrics predict the mpg of MechaCar's prototypes.  The image below shows there are a couple variables which provide a non-random
amount of variance to the mpg values in the dataset.  These would be the vehicle length and ground clearance which both have p-values well below an 'extreme' significance level of 0.0001 indicating they have a statistically
significant impact on mpg values.

The slope of the linear model is not zero which is seen in the overall p-value of 5.35e-11, and therefore we reject the null hypothesis.  Additionally the R-squared value of 0.7149 indicates 71.5% of MechaCar prototypes' mpg variability
can be predicted by the independent variables analyzed. This reading is generally considered a high correlation between variables, whereas a value below 0.5 is not.  

![LinearRegression_MPG.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/LinearRegression_MPG.png)


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the 
suspension coils must not exceed 100 pounds per square inch.  Does the current manufacturing data 
meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![Total_Summary_Susp_Coil_PSI.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/Total_Summary_Susp_Coil_PSI.png)

![Lot_Summary_Susp_Coil_PSI.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/Lot_Summary_Susp_Coil_PSI.png)

## T-Tests on Suspension Coils

![T_Test_Susp_Coil_PSI_All.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/T_Test_Susp_Coil_PSI_All.png)


![T_Test_Susp_Coil_PSI_Lot1.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/T_Test_Susp_Coil_PSI_Lot1.png)

![T_Test_Susp_Coil_PSI_Lot2.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/T_Test_Susp_Coil_PSI_Lot2.png)

![T_Test_Susp_Coil_PSI_Lot3.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/T_Test_Susp_Coil_PSI_Lot3.png)


## Study Design: MechaCar vs Competition

statistical study that can quantify how the MechaCar performs against the competition.  What metrics would be
 of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

address the following questions:
What are the metrics to test
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?