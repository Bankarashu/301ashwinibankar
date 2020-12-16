library(readxl)


df <- read_excel("C:/Users/ASHWINI/Mydata1.xlsx")

#display imported datset
View(df)

#display summary of dataset
summary(df)


print("FIND MINIMUM VALUE")
print(sapply(df, function(x) min(as.numeric(x))))


print("FIND MAXIMUM VALUE")
print(sapply(df, function(x) max(as.numeric(x))))

attach(Mydata1)

#SUMMARY OF COLUMN 
summary(AGE)

#FINDING MEAN OF COLUMN 
mean(AGE)

#FINDING MEDIAN OF COLUMN
median(AGE)

#FINDING STANDARD DEVATION OF COLUMN
sd(AGE)

sd(WEIGHT)

#CREATING VECTOR 
x <- c(1,2,3,4)

sqrt(mean( x ^ 2) - mean(x) ^ 2)

n <- length(x)
std <- sd(x)
sqrt((std ^ 2) * (n-1)/n)

length(x)
