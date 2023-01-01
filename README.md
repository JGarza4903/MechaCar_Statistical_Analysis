# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Based on the output of the linear regression, it appears that the variables "vehicle_length", "vehicle_weight", "spoiler_angle", "ground_clearance", and "AWD" all had a non-random impact on the mpg values in the dataset. This is shown by the significant p-values for these variables in the "Pr(>|t|)" column of the "Coefficients" table.

The slope of the linear model is not zero, as all of the coefficients in the table are significantly different from zero (as indicated by the significant p-values in the "Pr(>|t|)" column).

![](https://github.com/JGarza4903/MechaCar_Statistical_Analysis/blob/main/linear_regression.png)

As for the effectiveness of the linear model in predicting mpg of MechaCar prototypes, it seems to be fairly effective. The R-squared value of 0.7149 indicates that about 71.5% of the variance in the mpg values can be explained by the model, and the F-statistic of 22.07 with a p-value of 5.35e-11 indicates that the model is significant. However, there is still room for improvement, as the adjusted R-squared value of 0.6825 indicates that some of the variance in the model could be explained by overfitting.

## Summary Statistics on Suspension Coils
Based on the data, it appears that the current manufacturing data does not meet the design specification for all manufacturing lots in total. The variance for all manufacturing lots combined is 108.79 pounds per square inch, which exceeds the design specification of 100 pounds per square inch.

However, it appears that the current manufacturing data does meet the design specification for each manufacturing lot individually. The variance for Manufacturing Lot 1 is 0.98 pounds per square inch, which is well below the design specification of 100 pounds per square inch. The variance for Manufacturing Lot 2 is 7.47 pounds per square inch, which is also below the design specification. The same is true for Manufacturing Lot 3, which has a variance of 170.29 pounds per square inch.

Overall, it seems that the current manufacturing data meets the design specification for each manufacturing lot individually, but not for all manufacturing lots combined. 


## Study Design: MechaCar vs Competition
To quantify how the MechaCar performs against the competition, we can conduct a statistical study to compare the fuel efficiency of the MechaCar to that of its competitors. Fuel efficiency is a metric that is of interest to many consumers, as it can impact the cost of owning and operating a vehicle.

For this study, we will compare the city and highway fuel efficiency of the MechaCar to that of its competitors. Our null hypothesis will be that there is no significant difference in fuel efficiency between the MechaCar and its competitors. Our alternative hypothesis will be that the MechaCar has significantly higher fuel efficiency than its competitors.

To test our hypothesis, we will use a two-sample t-test. This statistical test is appropriate for comparing the mean of two independent groups, and it is widely used to compare the means of two groups when the variances are unknown.

To run the statistical test, we will need data on the city and highway fuel efficiency of the MechaCar and its competitors. This data can be obtained through testing or by using data from publicly available sources such as the EPA's Fuel Economy website. We will also need to ensure that the sample size is sufficient to accurately compare the fuel efficiency of the MechaCar and its competitors.

