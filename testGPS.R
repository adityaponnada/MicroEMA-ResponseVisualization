library(ggmap)
library(revgeo)

sampleFile <- read.csv("C:/Users/Dharam/Desktop/GPS.csv", sep = ",", header = FALSE)

names(sampleFile) <- c("LOG_TIME", "TIME_STAMP", "LAT", "LONG", "ACC")



for (i in 1:nrow(sampleFile)){
  
  print(paste0("at index ", i))
  
  
  sampleFile$ADDRESS[i] <- revgeo::revgeo(sampleFile$LONG[i], sampleFile$LAT[i], API = "Google")
  
  
}



#sampleFile$LOCATION <- mapply(FUN = function(LAT, LON) revgeocode(c(LAT, LON)), sampleFile$LAT, sampleFile$LONG) 
  
  