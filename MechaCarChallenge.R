# Challenge PART ONE

# Load the dplyr library
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mechacar_df <- read.csv("MechaCar_mpg.csv")

# Perform linear regression using the lm() function
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + drivetrain + ground_clearance, data = mechacar_df)

# Determine the p-value and the r-squared value for the linear regression model
summary(model)


# Challenge PART TWO

# Import and read in the Suspension_Coil.csv file as a dataframe
suspension_coil_df <- read.csv("Suspension_Coil.csv")

# Create a total_summary dataframe using the summarize() function
total_summary <- summarize(suspension_coil_df,
                           mean = mean(PSI, na.rm = TRUE),
                           median = median(PSI, na.rm = TRUE),
                           variance = var(PSI, na.rm = TRUE),
                           std_dev = sd(PSI, na.rm = TRUE))

# Create a lot_summary dataframe using the group_by() and summarize() functions
lot_summary <- suspension_coil_df %>%
  group_by(Lot) %>%
  summarize(mean = mean(PSI, na.rm = TRUE),
            median = median(PSI, na.rm = TRUE),
            variance = var(PSI, na.rm = TRUE),
            std_dev = sd(PSI, na.rm = TRUE))

# Save the MechaCarChallenge.RScript file
save.image("MechaCarChallenge.RScript")

# Challenge PART THREE

# Import and read in the Suspension_Coil.csv file as a dataframe
suspension_coil_df <- read.csv("Suspension_Coil.csv")

# Test if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
all_lots_t_test <- t.test(suspension_coil_df$PSI, mu = 1500)

# Test if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
lot1_t_test <- t.test(subset(suspension_coil_df, Lot == "1")$PSI, mu = 1500)
lot2_t_test <- t.test(subset(suspension_coil_df, Lot == "2")$PSI, mu = 1500)
lot3_t_test <- t.test(subset(suspension_coil_df, Lot == "3")$PSI, mu = 1500)

# Save the MechaCarChallenge.RScript file
save.image("MechaCarChallenge.RScript")

