setwd("/Users/patriciabrown/BioComp/Exercise07/ICB2019_Exercise07")
# Loading file into R (file does have a header)
dat <- read.csv(file = "iris.csv", header = TRUE, sep = ",")

# Extract the species column from the data
species_dat <- dat$Species

# Function that takes species as an argument and returns its count
count_species <- function(species) {
  # Starts count at 0
  num_species <- 0
  # Loops through all of the species' names
  for(line in species_dat) {
    if(line == species) {
      num_species <- num_species + 1
    }
  }
  return(num_species)
}
# Testing the first function
num <- count_species("setosa")
output <- c("Number of setosa: ", num)
print(output)

# Function to return a dataframe for flowers width Sepal.Width greater than a value specified by user (width)
width_greater_than <- function(width) {
  # Only returns rows that have a second colum (Sepal.Width) greater than 2
  return(dat[dat[ ,2] > width, ])
}

# Testing the second function
width_df <- width_greater_than(4)
print(width_df)

# Function to write the data for a given species to a comma-delimited file with the given species name as the file name
species_file <- function(species) {
  # Creates new data frame with only the rows containing a species name equivalent to the species paramter
  species_dat <- dat[dat[ ,5] == species, ]
  file_name <- paste(species, "csv", sep = ".")
  write.csv(species_dat, file = file_name, row.names = FALSE)
}

# Testing the third function
species_file("virginica")




