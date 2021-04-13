library(readr)
crops <- read_csv("C:/Users/ASHWINI/Crops_data.csv")
View(crops)

#summary
summary(crops)

#minimum value
min_value<-min<-min(crops$Production,na.rm = TRUE)
print(min_value)

#maximum value
max_value<-max(crops$Production,na.rm = TRUE)
print(max_value)

#mean
mean_value <- mean(crops$Production,na.rm = TRUE)
print(mean_value)
area<-crops$Area
production<-crops$Production
plot(area,production,main = 'scatter plot',xlab='Area',ylab='Production')
relation<-summary(crops[c("Area","Production")])

# Creating the data frame
a<-data.frame(area)

#Linear model
relation <- lm(production ~ area)
summary(relation)
result<-predict(relation,newdata = a,intrval='confidence')
print(result)
      
#logistic regression algorithm

library(readr)
#read tha csv file
crops <- read.csv("C:/Users/ASHWINI/Crops_data.csv")
View(crops)

season <- crops$Season
crop <-crops$Crop
relation <- ifelse(season == "kharif",1,0)
plot(crop,season,main = 'logistic algo')



