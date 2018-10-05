

uEMAParticipant$PROMPTED[!is.na(uEMAParticipant$ANSWER_TIME)] = 1
uEMAParticipant$PROMPTED[is.na(uEMAParticipant$ANSWER_TIME)] = 0


library(plotly)

responseDensityPlot <- plot_ly(uEMAParticipant, x = ~PROMPT_TIME, y = ~PROMPTED, type = "bar")
