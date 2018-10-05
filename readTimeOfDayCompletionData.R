library(plotly)

completionDataByTime <- read.csv("C:/Users/Dharam/Downloads/microEMA/StudyFiles/ResponsePlots/timeOfDayCompletion.csv", sep = ",", header = TRUE)


completionDataByTime$TIME_DAY <- as.factor(completionDataByTime$TIME_DAY)


timeDayCompPlot <- plot_ly(completionDataByTime, y = ~COMPLETION, x = ~TIME_DAY, type = "box")

