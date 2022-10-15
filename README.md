# MechaCar_Statistical_Analysis
Utilize R to provide analytical insight into automotive manufacturing variables. 

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

The design specifications for the MechaCar suspension coils dictate that the variance must not exceed 100 pounds per square inch (PSI).  The current manufacturing data indicates specs 
are being met when looking at the population as a whole; 62.3 PSI in (seen in image immediately below) vs 100 PSI.  However, specs are not being met when looking at each 
manufacturing lot individually.  The second image shows Lot1 and Lot2 are well within the threshold, but Lot3 almost doubles the threshold having a variance of 170.3 PSI.

![Total_Summary_Susp_Coil_PSI.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/Total_Summary_Susp_Coil_PSI.png)

![Lot_Summary_Susp_Coil_PSI.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/Lot_Summary_Susp_Coil_PSI.png)

## T-Tests on Suspension Coils

T-tests are performed to compare the mean of one dataset to another to determine if there is a statistical difference between the means of a sample compared to the population.  Four t-tests were performed on the MechaCare suspension coil dataset comparing the combined lots against the population mean of 1500 PSI and the three separate manufacturing lots against the population. 

![T_Test_Susp_Coil_PSI_All.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/T_Test_Susp_Coil_PSI_All.png)
The screenshot above shows results of the t-test comparing the mean of all lots to the entire population.  The p-value of 0.06028 is above the significance level.  Therefore there isn't sufficient evidence to reject the null hypothesis meaning the two means are statistically similar.  

![T_Test_Susp_Coil_PSI_Lot1.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/T_Test_Susp_Coil_PSI_Lot1.png)
The screenshot above shows results of the t-test comparing the mean of 'Lot 1' to the entire population.  The p-value of 1 is above the significance level and the means
are identical.  Therefore there isn't sufficient evidence to reject the null hypothesis. 

![T_Test_Susp_Coil_PSI_Lot2.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/T_Test_Susp_Coil_PSI_Lot2.png)
The screenshot above shows results of the t-test comparing the mean of 'Lot 2' to the entire population.  The p-value of 0.06072 is above the significance level.  Therefore there isn't sufficient evidence to reject the null hypothesis meaning the two means are statistically similar.

![T_Test_Susp_Coil_PSI_Lot3.png](https://github.com/dschul01/MechaCar_Statistical_Analysis/blob/main/Resources/T_Test_Susp_Coil_PSI_Lot3.png)
The screenshot above shows results of the t-test comparing the mean of 'Lot 3' to the entire population.  The p-value of 0.04168 is below the significance level.  Therefore there is sufficient evidence to reject the null hypothesis meaning the two means are statistically different with 'Lot 3' having a mean of 1,496.14.


## Study Design: MechaCar vs Competition

statistical study that can quantify how the MechaCar performs against the competition.  What metrics would be
 of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

address the following questions:
What are the metrics to test
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

Where is my reference:

[^1]: Reference: Statista.com  "Most Important Factors When Buying a Care" by Martin Armstrong Sep 7, 2022
(https://www.statista.com/chart/13075/most-important-factors-when-buying-a-car/#:~:text=According%20to%20data%20from%20Statista's,top%20priority%20when%20shopping%20around.)
