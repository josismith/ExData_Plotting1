plot1 <-function(mydata){
  
## creates a histigram of the global active power by frequency

  graph <-hist(mydata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowats)")
  par(mar=c(5, 4, 4, 8) + 0.1)


## saves to a file
  dev.copy(png, './project1/plot1.png')
  dev.off()

 return(graph)

}