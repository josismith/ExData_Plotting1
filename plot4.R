plot4 <-function(mydata){
  ## creates a linegraph of global active power by day
  
  par(mfrow= c(2,2))
  par(mar = c(4,4,3,3))
  
  graph1 <-plot(mydata$datetime,mydata$Global_active_power, col = "black",  ylab = "Global Active Power", xlab = "", type = "l")
 
  
  graph2 <-plot(mydata$datetime,mydata$Voltage, col = "black",  ylab = "Voltage", xlab = "datetime", type = "l")

    
  graph3 <-plot(mydata$datetime, mydata$Sub_metering_1, col = "black", ylab = "Energy sub metering", xlab = "", type = "l") 
  points(mydata$datetime, mydata$Sub_metering_2, col = "red", type = "l")
  points(mydata$datetime, mydata$Sub_metering_3, col = "blue", type = "l")
  
  ##build legend
  legend('topright',  c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), lwd=c(2.5,2.5),col=c("black","red", "blue"), bty = 'n') 
  
  
  graph4 <- plot(mydata$datetime,mydata$Global_reactive_power, col = "black", ylab="Global_reactive_power", xlab = "datetime",type = "l")
  
  
  
  
  ## saves to a file
  dev.copy(png, './project1/plot4.png')
  dev.off()
  return(graph)
}