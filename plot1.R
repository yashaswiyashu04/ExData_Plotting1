#store the values in 'data' variable
pdata <- read.table(file = "household_power_consumption.txt", sep = ";", encoding = "UTF-8", header = TRUE)

#making a subset to analyse the data on those 2 days 
gdata <- subset(pdata,pdata$Date=="1/2/2007" | pdata$Date =="2/2/2007")

#plot1 
hist(as.numeric(as.character(gdata$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

#to create the png file of plot1
png(filename = "plot1.png", width = 480, height = 480)
hist(as.numeric(as.character(gdata$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()