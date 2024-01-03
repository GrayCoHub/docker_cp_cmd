# A simple R scrip file to demonstrate how the dockerfile COPY cmd 
#  works between the file system and docker

# set seed for the random number generator
set.seed(1231)

# Create a data frame with 12 random numbers
x <- 1:12
x12 <- sample(x, replace = TRUE)
x_df <- data.frame(X = x12)

# write and read the data frame to a csv file.   
write.csv(x_df, file = "testFile.csv", row.names = FALSE)
df <- read.csv("testFile.csv", header = TRUE)

# print the data frame
df
