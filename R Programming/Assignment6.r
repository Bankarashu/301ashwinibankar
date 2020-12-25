#VECTOR
data <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")

#ACCESSING DATA USING INDEXING
data1 <- data[c(2,3,6)]
print(data1)

#Accessing data using logical indexing
data2 <- data[c(TRUE,FALSE,FALSE,TRUE,FALSE,TRUE,FALSE)]
print(data2)

#Accessing data using negative indexing 
d1 <- data[c(-2,-5)]
print(d1)

d2 <- data[c(0,0,0,0,0,0,1)]
print(d2)


#LIST
 d3 <- list(c("Jan","Feb","Mar"),matrix(c(3,9,5,1,-2,8),nrow = 2),list("green",12.3))
names(d3) <- c("1st Quater","A_Matrix","A Inner List")
print(d3)


#Matrix 
a1 <- matrix(3:14,nrow = 4,byrow = TRUE)
print(a1)


a2 <- matrix(3:14,nrow = 4,byrow = FALSE)
print(a2)


rownames = c("row1","row2","row3","row4")
colnames = c("col1","col2","col3")

a3 <- matrix(3:14,nrow = 4,byrow = TRUE,dimnames = list(rownames,colnames))
print(a3)


#Graph
png(file= "boxplot.png")
boxplot(mpg ~ cyl, data=mtcars,xlab = "Number of cylinder",ylab = "Miles per Gallon",main="Mileage Data")
dev.off()


data <- c(7,12,28,3,41)


#Give the chart file a name.
png(file="line_chart.jpg")

plot(c,type="o")

png(file="boxplot.png")

boxplot(mpg ~ cyl,data=mtcars,xlab = "Number of cylinder",ylab = "Miles per Gallon",main="Mileage Data")
dev.off()

dev.off()

#Control structure 
new.function <- function(a)
{
  for (i in 1:a) 
    {
    b<- i^2
    print(b)
    }
}

new.function(6)

#Creating Data frame
BMI <- data.frame(
  gender=c("Male","Male","Female"),
  height=c(152,171.5,165),
  weight=c(81,93,78),
  Age=c(42,38,26)
)
print(BMI)


