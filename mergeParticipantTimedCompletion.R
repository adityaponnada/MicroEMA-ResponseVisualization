
timeCompletionData <- data.frame(USER_ID = NA, TIME_DAY = NA, COMPLETION = NA)



### Run only this line to append

timeCompletionData <- rbind(timeCompletionData, timeDayData)





### Run this once all participants are added

timeCompletionData <- timeCompletionData[-1,]

write.csv(file = "C:/Users/Dharam/Downloads/microEMA/StudyFiles/timeOfDayCompletion.csv", x = timeCompletionData, quote = FALSE, row.names = FALSE, col.names = TRUE, sep = ",")
