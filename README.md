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

Fuel efficiency and safety are the most important factors consumers consider when purchasing a car according to Statista's Global Consumer Survey.[^1]  Therefore I would be utilizing city & highway fuel efficiency and safety ratings metrics for the statitistical tests on MechaCar vehicles compared to competing manufacturers.  The null
hypothesis would be there is no differences between MechaCar's and key competitors' fuel efficiency and safety ratings metrics.  Data necessary to run the statistical test would include both city and highway mpg measurements for each vehicle class of MechaCar and competitors' vehicles.  As for safety data, 
The National Highway Traffic Safety Administration (NHTSA) looks at frontal, side and rollover tests in determining their 5-Star safety ratings.[^2] Therefore the test would be analyzing the data output from those tests as well as crash avoidance and mitigation metrics on MechaCar and competitor vehicles.  An ideal dataset would contain results from every possible outcome or condition, but a representative sample would be used to be economically conscious. A one-sample t-Test would be performed to ensure the sample means are representative of the population mean.  Additionally, a paired t-test would be used to compare metrics across vehicle classes and competitors as this test is used to compare samples each from different populations.


[^1]: Martin Armstrong. "Most Important Factors When Buying a Car." Statista.com. September 3, 2022.
(https://www.statista.com/chart/13075/most-important-factors-when-buying-a-car/#:~:text=According%20to%20data%20from%20Statista's,top%20priority%20when%20shopping%20around.)
[^2]: U.S. Department of Transportation. Ratings. (https://www.nhtsa.gov/ratings.) Accessed Oct. 11, 2022.