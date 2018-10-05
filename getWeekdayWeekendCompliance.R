
uEMAParticipant$DAY_WEEK <- weekdays.POSIXt(uEMAParticipant$PROMPT_TIME)

uEMAParticipant$DAY_WEEK <- as.factor(uEMAParticipant$DAY_WEEK)


uEMAParticipant$DAY_TYPE[uEMAParticipant$DAY_WEEK == "Monday"] <- "Weekday"
uEMAParticipant$DAY_TYPE[uEMAParticipant$DAY_WEEK == "Tuesday"] <- "Weekday"
uEMAParticipant$DAY_TYPE[uEMAParticipant$DAY_WEEK == "Wednesday"] <- "Weekday"
uEMAParticipant$DAY_TYPE[uEMAParticipant$DAY_WEEK == "Thursday"] <- "Weekday"
uEMAParticipant$DAY_TYPE[uEMAParticipant$DAY_WEEK == "Friday"] <- "Weekday"
uEMAParticipant$DAY_TYPE[uEMAParticipant$DAY_WEEK == "Saturday"] <- "Weekend"
uEMAParticipant$DAY_TYPE[uEMAParticipant$DAY_WEEK == "Sunday"] <- "Weekend"




## Compute day wise compliance

for (i in 1:nrow(uEMAParticipant)){
  
  print(paste0("At index i ", i))
  
  if (uEMAParticipant$ACTIVITY_TYPE[i] != "MISSED" & uEMAParticipant$ACTIVITY_TYPE[i] != "DISMISSED") {
      uEMAParticipant$DAY_WEEK_COMPLETION[i] = 1
    
  } else {
    
    uEMAParticipant$DAY_WEEK_COMPLETION[i] = 0
    
  }
    
  
}




dayWeekComp <- data.frame(USER_ID = NA, DAY_WEEK = NA, COMPLETION = NA)

#### Monday

dayComp <- subset(uEMAParticipant, uEMAParticipant$DAY_WEEK == "Monday")

totalDay <- nrow(dayComp)

dayAnswered <- subset(dayComp, dayComp$ACTIVITY_TYPE != "MISSED" & dayComp$ACTIVITY_TYPE != "DISMISSED")

answeredThatDay <- nrow(dayAnswered)

temp <- data.frame(USER_ID = userName, DAY_WEEK = "Monday", COMPLETION = answeredThatDay/totalDay)

dayWeekComp <- rbind(dayWeekComp, temp)


#### Tuesday

dayComp <- subset(uEMAParticipant, uEMAParticipant$DAY_WEEK == "Tuesday")

totalDay <- nrow(dayComp)

dayAnswered <- subset(dayComp, dayComp$ACTIVITY_TYPE != "MISSED" & dayComp$ACTIVITY_TYPE != "DISMISSED")

answeredThatDay <- nrow(dayAnswered)

temp <- data.frame(USER_ID = userName, DAY_WEEK = "Tuesday", COMPLETION = answeredThatDay/totalDay)

dayWeekComp <- rbind(dayWeekComp, temp)


#### Wednesday

dayComp <- subset(uEMAParticipant, uEMAParticipant$DAY_WEEK == "Wednesday")

totalDay <- nrow(dayComp)

dayAnswered <- subset(dayComp, dayComp$ACTIVITY_TYPE != "MISSED" & dayComp$ACTIVITY_TYPE != "DISMISSED")

answeredThatDay <- nrow(dayAnswered)

temp <- data.frame(USER_ID = userName, DAY_WEEK = "Wednesday", COMPLETION = answeredThatDay/totalDay)

dayWeekComp <- rbind(dayWeekComp, temp)


#### Thursday

dayComp <- subset(uEMAParticipant, uEMAParticipant$DAY_WEEK == "Thursday")

totalDay <- nrow(dayComp)

dayAnswered <- subset(dayComp, dayComp$ACTIVITY_TYPE != "MISSED" & dayComp$ACTIVITY_TYPE != "DISMISSED")

answeredThatDay <- nrow(dayAnswered)

temp <- data.frame(USER_ID = userName, DAY_WEEK = "Thursday", COMPLETION = answeredThatDay/totalDay)

dayWeekComp <- rbind(dayWeekComp, temp)



#### Friday

dayComp <- subset(uEMAParticipant, uEMAParticipant$DAY_WEEK == "Friday")

totalDay <- nrow(dayComp)

dayAnswered <- subset(dayComp, dayComp$ACTIVITY_TYPE != "MISSED" & dayComp$ACTIVITY_TYPE != "DISMISSED")

answeredThatDay <- nrow(dayAnswered)

temp <- data.frame(USER_ID = userName, DAY_WEEK = "Friday", COMPLETION = answeredThatDay/totalDay)

dayWeekComp <- rbind(dayWeekComp, temp)



#### Saturday

dayComp <- subset(uEMAParticipant, uEMAParticipant$DAY_WEEK == "Saturday")

totalDay <- nrow(dayComp)

dayAnswered <- subset(dayComp, dayComp$ACTIVITY_TYPE != "MISSED" & dayComp$ACTIVITY_TYPE != "DISMISSED")

answeredThatDay <- nrow(dayAnswered)

temp <- data.frame(USER_ID = userName, DAY_WEEK = "Saturday", COMPLETION = answeredThatDay/totalDay)

dayWeekComp <- rbind(dayWeekComp, temp)



#### Sunday

dayComp <- subset(uEMAParticipant, uEMAParticipant$DAY_WEEK == "Sunday")

totalDay <- nrow(dayComp)

dayAnswered <- subset(dayComp, dayComp$ACTIVITY_TYPE != "MISSED" & dayComp$ACTIVITY_TYPE != "DISMISSED")

answeredThatDay <- nrow(dayAnswered)

temp <- data.frame(USER_ID = userName, DAY_WEEK = "Sunday", COMPLETION = answeredThatDay/totalDay)

dayWeekComp <- rbind(dayWeekComp, temp)



dayWeekComp <- dayWeekComp[-1, ]




dayWeekComp$DAY_TYPE[dayWeekComp$DAY_WEEK == "Monday"] <- "Weekday"
dayWeekComp$DAY_TYPE[dayWeekComp$DAY_WEEK == "Tuesday"] <- "Weekday"
dayWeekComp$DAY_TYPE[dayWeekComp$DAY_WEEK == "Wednesday"] <- "Weekday"
dayWeekComp$DAY_TYPE[dayWeekComp$DAY_WEEK == "Thursday"] <- "Weekday"
dayWeekComp$DAY_TYPE[dayWeekComp$DAY_WEEK == "Friday"] <- "Weekday"
dayWeekComp$DAY_TYPE[dayWeekComp$DAY_WEEK == "Saturday"] <- "Weekend"
dayWeekComp$DAY_TYPE[dayWeekComp$DAY_WEEK == "Sunday"] <- "Weekend"

dayWeekComp$DAY_WEEK <- as.factor(dayWeekComp$DAY_WEEK)
dayWeekComp$DAY_TYPE <- as.factor(dayWeekComp$DAY_TYPE)

## Compute weekday vs weekend compliance


