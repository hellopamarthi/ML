airquality<- datasets::airquality
####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns
##c(1:4) returns the rows; c(1,2,3,4) returns the columns. 
airquality[c(1:4),c(1,2,3,4)]

df<-airquality[,-6]

summary(airquality[,1])

airquality$Ozone

summary(airquality$Wind)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind)
#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both

plot(airquality$Wind, xlab = 'Index', 
     ylab = "Ozone Concentration", main = 'Ozone levels in NY city',
     col = 'blue')

# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz =F,axes=T)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')
#Single box plot
boxplot(airquality$Wind,main="Boxplot")

boxplot.stats(airquality$Wind)$out
# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot "o" - box around the plot,"n"- No box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="n")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')
##Home work
e_quakes<-datasets::quakes

##na.rm means Remove na values from airquality.ozone.

sd(airquality$Ozone,na.rm = T)

#Load Packages

#var
var(e_quakes$depth,na.rm = T)
var(e_quakes$mag,na.rm = T)

#skewness
skewness(e_quakes$mag,na.rm = T) 
skewness(e_quakes$depth,na.rm = T) 

#kurtosis
kurtosis(e_quakes$depth,na.rm = T)
kurtosis(e_quakes$mag,na.rm = T)



