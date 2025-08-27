###Creating Vectors###

1:5
c(1, 2, 3, 4, 5) # c() creates a vector
c(pi, 1.5, 3, 5.278374)
honk <- c(pi, 1.5, 3, 5.278374)
round(honk, 4) #2nd argument of round() is number of decimal places

plop <- seq(0, 100, 5)
# create a logical vector using plop
(plopbool <-  plop < 52) #wrapping code in parenthesis displays the result

#create a character vector
v1 <- c("red", "firebrick", "blue", "navy", "forestgreen")
letters
LETTERS

#subsetting a vector
letters[5]
letters[1:8]
letters[c(3, 6, 21)]

###Data Frames###

str(airquality)
View(airquality)
#create a copy of this data frame
aq <- airquality
#select all August temperatures
aq$Temp[aq$Month == 8]
#subset to remove the first two columns
aq2 <- aq[ ,3:6]
# create hotaq which includes all days with temps above 85 degrees
hotaq <- aq[aq$Temp > 85, ]
str(hotaq)
hotaq

colMeans(aq)
colMeans(aq, na.rm = TRUE)

# overwrite the month vector to contain month names
aq$Month <- factor(rep(c("May", "June", "July", "August", "September"), c(31, 30, 31, 31, 30)), 
                       levels = c("May", "June", "July", "August", "September"))

vectorEx = c("Basketball", "Soccer", "Football", "Golf", "Baseball", "Ping Pong")


### Tuesday 8/26 ###

### Summary Stats ###

#using the table function
table(airquality$Month)
table(aq$Month)

table(aq$Temp) #not helpful because temp is numeric (continous)
table(cut(aq$Temp, seq(49, 99, 10)))


#mean, standard deviation, percentiles
mean(aq$Ozone) #will not compute because of the missingvalues
mean(aq$Ozone, na.rm = TRUE)
sd(aq$Ozone, TRUE)
var(aq$Ozone, na.rm = TRUE)
median(aq$Ozone, TRUE)
min(aq$Ozone, na.rm = TRUE)
max(aq$OZone, na.rm = TRUE)
#if we want to know all that, theres a much faster way
summary(aq$Ozone)
#computing any percentile
quantile(aq$Ozone, c(0.3, .45, .83), na.rm = TRUE)

### practice with iris data ###
str(iris)
View(iris)
#compute the mean of all 4 meausremeants
colMeans(iris[, 1:4])
apply(iris[,1:4], 2, mean)
#compute the mean sepal length among only setosa flowers
mean(iris$Sepal.Length[iris$Species == "setosa"])
#what proportion of flowers have a petal length greater than 1.55?
mean(iris$Petal.Length > 1.55)


### available data sets, packages, and importing data
data() #opens a new tab showing all available data sets
install.packages("AER") #install new package
library(AER) #activates the AER package
data("Affairs")
str(Affairs)

#importing data from outside of R
setwd("/Users/christiantuttle/Desktop/Comp-Stats")
#read in a csv file
mh <- read.csv("male_health.csv")
str(mh)
#reading in other types of data:
#read.delim() for txt
# read_excel() in the readxl package for .xls and .xlsx
#
















