plot2 <-function(mydata){
  ## creates a linegraph of global active power by day
  
  par(mar=c(2, 4, 4, 8) + 0.1)
  graph <-plot(mydata$datetime, mydata$Global_active_power, col = "black", ylab = "Global Active Power (kilowats)", type = "l")  

  
  ## saves to a file
  dev.copy(png, './project1/plot2.png')
  dev.off()
  return(graph)
}