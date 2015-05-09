plot3 <-function(mydata){
  ## creates a linegraph of global active power by day
  
  par(mar=c(2, 4, 4, 8) + 0.1)
  graph <-plot(mydata$datetime, mydata$Sub_metering_1, col = "black", ylab = "Energy sub metering", type = "l") 
  points(mydata$datetime, mydata$Sub_metering_2, col = "red", type = "l")
  points(mydata$datetime, mydata$Sub_metering_3, col = "blue", type = "l")
  
  ##build legend
  legend('topright',  c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), lwd=c(2.5,2.5),col=c("black","red", "blue")) 
  ## saves to a file
  
  dev.copy(png, './project1/plot3.png')
  dev.off()
  return(graph)
}