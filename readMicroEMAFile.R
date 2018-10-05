library(psych)
library(plyr)
library(dplyr)
library(MASS)


uEMAFile <- read.csv("C:/Users/Dharam/Downloads/microEMA/StudyFiles/Responses_uEMA/uEMAPromptResponses.csv", header = TRUE, sep = ",")


head(uEMAFile)
tail(uEMAFile)


userName = "uema01@micropa_com"


uEMAParticipant <- subset(uEMAFile, uEMAFile$USER_ID == userName)

head(uEMAParticipant)
tail(uEMAParticipant)

keep <- c("USER_ID", "PROMPT_TIME", "ANSWER_TIME", "ACTIVITY_TYPE")

uEMAParticipant <- uEMAParticipant[, keep]

head(uEMAParticipant)
tail(uEMAParticipant)


uEMAParticipant$PROMPT_TIME <- as.POSIXct(uEMAParticipant$PROMPT_TIME, format = "%m/%d/%Y %H:%M:%OS")
uEMAParticipant$ANSWER_TIME <- as.POSIXct(uEMAParticipant$ANSWER_TIME, format = "%m/%d/%Y %H:%M:%OS")

class(uEMAParticipant$ANSWER_TIME)
class(uEMAParticipant$PROMPT_TIME)

class(uEMAParticipant$ACTIVITY_TYPE)

