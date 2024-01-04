# A simple R scrip file to create random data, create df, and write .csv 
# Will demonstrate how the dockerfile cp cmd works between the 
# container's file system, /app, and the host file system.

# set seed - include/exclude this fct to explore if data changes 
# set.seed(1231)     

# Create a data frame with 12 random numbers
x <- 1:12
x12 <- sample(x, replace = TRUE)
x_df <- data.frame(X = x12)

# write and read the data frame to a csv file.   
write.csv(x_df, file = "testFile.csv", row.names = FALSE)
df <- read.csv("testFile.csv", header = TRUE)

# print the data frame
print(df)
