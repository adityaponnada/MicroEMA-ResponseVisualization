
dayCompliance <- data.frame(USER_ID = userName, PROMPT_TIME = NA, COMPLETION = NA)
tempDataFrame <- data.frame(USER_ID = userName, PROMPT_TIME = NA, COMPLETION = NA)

dayCompliance$PROMPT_TIME <- as.POSIXct(dayCompliance$PROMPT_TIME, format = "%m/%d/%Y %H:%M:%OS")

totalAnswered = 0
totalPrompted = 0


for (i in 1:nrow(uEMAParticipant)){
  
  print(paste0("At index: ", i))
  
  
  uEMAPickedRow <- uEMAParticipant[i,]
  
  if (uEMAPickedRow$ACTIVITY_TYPE != "MISSED" & uEMAPickedRow$ACTIVITY_TYPE != "DISMISSED"){
    
      totalAnswered = totalAnswered + 1
      totalPrompted = totalPrompted + 1
    
    
  } else {
    
    totalPrompted = totalPrompted + 1
  }
  
  completion  = totalAnswered/totalPrompted
  
  tempDataFrame <- data.frame(USER_ID = userName, PROMPT_TIME = uEMAPickedRow$PROMPT_TIME, COMPLETION = completion) 
  dayCompliance <- rbind(dayCompliance, tempDataFrame)
  
  print(paste0("Cumulative completion ", completion))
  
}

dayCompliance <- dayCompliance[-1,]

head(dayCompliance)

dayCompliance$COMPLETION_PERC <- dayCompliance$COMPLETION*100
