# Define data frame to read from
setwd("/Users/patriciabrown/BioComp/Exercise07/ICB2019_Exercise07")
file_name <- "iris.csv"
dat <- read.csv(file = file_name, header = TRUE, sep = ',')

# Function that returns the odd rows of a data frame passed to it
odd_rows <- function(data) {
  
  # Create an empty data frame
  df <- data.frame()
  
  # Loop through all rows
  for(i in 1:nrow(data)) {
    # Check if row number is odd and add to new data frame if it is
    if((i %% 2) != 0) {
      df <- rbind(df, data[i, ])
    }
  }
  return(df)
}

# Testing function
new_rows <- odd_rows(dat)
print(new_rows)