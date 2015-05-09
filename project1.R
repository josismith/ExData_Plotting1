project1 <- function (){
  ##include functions
  source('~/project1/plot1.R')
  source('~/project1/plot2.R')
 source('~/project1/plot3.R')
 source('~/project1/plot4.R')
  
  
  ## read in file  
  input <- read.csv("./project1/household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, colClasses= c("character","character", rep("numeric",7)), na.strings = "?")
  
  ##substring file to dates I want
  mydata <- input[(input$Date%in%"1/2/2007")|(input$Date%in%"2/2/2007"),]
  mydata$datetime <- strptime(paste(mydata$Date, mydata$Time), "%d/%m/%Y %H:%M:%S")
  
  ##builds plots
  plot1 <-   plot1(mydata)
  
  plot2 <-   plot2(mydata)
  plot3 <- plot3(mydata)
  plot4 <- plot4(mydata)
  
}