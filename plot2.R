#store the values in 'data' variable
pdata <- read.table(file = "household_power_consumption.txt", sep = ";", encoding = "UTF-8", header = TRUE)

#making a subset to analyse the data on those 2 days 
gdata <- subset(pdata,pdata$Date=="1/2/2007" | pdata$Date =="2/2/2007")

#plot2
plot(as.numeric(gdata$Global_active_power),main="Global Active Power",type="l", ylab="Global Active Power(kilowatts)",xlab="",axes=FALSE)
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2,at=c(0,2,4,6))
box(lty = 1, col = 'black')

#plot2 png
dev.copy(png,"plot2.png")
dev.off()