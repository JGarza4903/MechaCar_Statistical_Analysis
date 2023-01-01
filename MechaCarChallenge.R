# Challenge PART ONE

# Load the dplyr library
library(dplyr)

# Import file and create dataframe
mechacar_df <- read.csv("MechaCar_mpg.csv")

# Perform linear regression 
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df)

# Determine the p-value and the r-squared value for the linear regression model (Use Summary)
summary(model)

# Challenge PART TWO

# Import file and create dataframe
suspension_coil_df <- read.csv("Suspension_Coil.csv")

# Create a total_summary dataframe using the summarize() function
total_summary <- summarize(suspension_coil_df,
                           mean = mean(PSI, na.rm = TRUE),
                           median = median(PSI, na.rm = TRUE),
                           variance = var(PSI, na.rm = TRUE),
                           std_dev = sd(PSI, na.rm = TRUE))

# Create a lot_summary dataframe using the group_by() and summarize() functions
lot_summary <- suspension_coil_df %>%
  group_by(Manufacturing_Lot) %>%
  summarize(mean = mean(PSI, na.rm = TRUE),
            median = median(PSI, na.rm = TRUE),
            variance = var(PSI, na.rm = TRUE),
            std_dev = sd(PSI, na.rm = TRUE))

# Save file
save.image("MechaCarChallenge.R")

# Challenge PART THREE

# Import file and create dataframe
suspension_coil_df <- read.csv("Suspension_Coil.csv")

# Test if the PSI across all lots are different from the average of 1,500 PSI
all_lots_t_test <- t.test(suspension_coil_df$PSI, mu = 1500)

# Test if the PSI for each lot are different from the average of 1,500 PSI
lot1_t_test <- t.test(subset(suspension_coil_df, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
lot2_t_test <- t.test(subset(suspension_coil_df, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
lot3_t_test <- t.test(subset(suspension_coil_df, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)

# Save file
save.image("MechaCarChallenge.R")

