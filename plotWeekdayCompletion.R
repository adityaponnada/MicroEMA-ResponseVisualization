library(plotly)

dayPlot11 <- plot_ly(dayWeekComp, y=~COMPLETION, x = ~DAY_WEEK, type = "bar", name = "P11", legendgroup = userName)



subplot(dayPlot1, dayPlot2, dayPlot3, dayPlot4, dayPlot5,dayPlot6, dayPlot7, dayPlot9,dayPlot11, nrows = 3, margin = 0.05)


weekPlot01 <- plot_ly(dayWeekComp, y=~COMPLETION, x = ~DAY_TYPE, type = "box", name = "P01", legendgroup = userName)

subplot(weekPlot01, weekPlot02, weekPlot03, weekPlot04, weekPlot05, weekPlot06, weekPlot07, weekPlot09, weekPlot11, nrows = 3, margin = 0.05)
