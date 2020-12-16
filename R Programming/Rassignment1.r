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

summary(AGE)

mean(AGE)

median(AGE)
