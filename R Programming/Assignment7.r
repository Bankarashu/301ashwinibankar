library(readxl)
LungCapData <- read_excel("C:/Users/ASHWINI/LungCapData1.xls")
View(LungCapData)
attach(LungCapData)
names(LungCapData)
plot(Age,LungCap,main="ScatterPlot")
cor(Age,LungCap)

help(lm)
 ?lm
 
 mod <- lm(LungCap ~ Age)

summary(mod)

attributes(mod)

mod$coefficients

plot(Age,LungCap,main="Scatter Plot")

abline(mod)

abline(mod,col=2,lwd=3)

