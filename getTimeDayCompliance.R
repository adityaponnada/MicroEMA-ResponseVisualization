


uEMAParticipant$TIME_DAY <- NA

for (i in 1:nrow(uEMAParticipant)){
  
  print(paste0("At index i ", i))
  
  promptTime <- uEMAParticipant$PROMPT_TIME[i]
  
  if (as.numeric(format(promptTime, "%H")) >= 8 & as.numeric(format(promptTime, "%H")) < 12){
    
    uEMAParticipant$TIME_DAY[i] <- "Morning"
    
  } else if (as.numeric(format(promptTime, "%H")) >= 12 & as.numeric(format(promptTime, "%H")) < 16){
    
    uEMAParticipant$TIME_DAY[i] <- "Afternoon"
    
  } else if (as.numeric(format(promptTime, "%H")) >= 16 & as.numeric(format(promptTime, "%H")) <= 20){
    
    uEMAParticipant$TIME_DAY[i] <- "Evening/Night"
    
  }
  
  
}


head(uEMAParticipant)

class(uEMAParticipant$TIME_DAY)

uEMAParticipant$TIME_DAY <- as.factor(uEMAParticipant$TIME_DAY)


timeDayData <- data.frame(USER_ID = userName, TIME_DAY = NA, COMPLETION = NA)



#### Morning

timeComp <- subset(uEMAParticipant, uEMAParticipant$TIME_DAY == "Morning")

totalTime <- nrow(timeComp)

timeAnswered <- subset(timeComp, timeComp$ACTIVITY_TYPE != "MISSED" & timeComp$ACTIVITY_TYPE != "DISMISSED")

answeredThatTime <- nrow(timeAnswered)

temp <- data.frame(USER_ID = userName, TIME_DAY = "Morning", COMPLETION = answeredThatTime/totalTime)

timeDayData <- rbind(timeDayData, temp)


#### Afternoon

timeComp <- subset(uEMAParticipant, uEMAParticipant$TIME_DAY == "Afternoon")

totalTime <- nrow(timeComp)

timeAnswered <- subset(timeComp, timeComp$ACTIVITY_TYPE != "MISSED" & timeComp$ACTIVITY_TYPE != "DISMISSED")

answeredThatTime <- nrow(timeAnswered)

temp <- data.frame(USER_ID = userName, TIME_DAY = "Afternoon", COMPLETION = answeredThatTime/totalTime)

timeDayData <- rbind(timeDayData, temp)



#### Evening/Night

timeComp <- subset(uEMAParticipant, uEMAParticipant$TIME_DAY == "Evening/Night")

totalTime <- nrow(timeComp)

timeAnswered <- subset(timeComp, timeComp$ACTIVITY_TYPE != "MISSED" & timeComp$ACTIVITY_TYPE != "DISMISSED")

answeredThatTime <- nrow(timeAnswered)

temp <- data.frame(USER_ID = userName, TIME_DAY = "Evening/Night", COMPLETION = answeredThatTime/totalTime)

timeDayData <- rbind(timeDayData, temp)



timeDayData <- timeDayData[-1, ]





