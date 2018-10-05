library(plotly)

plotDayCompletion17 <- plot_ly(dayCompliance, x = ~PROMPT_TIME, y = ~COMPLETION_PERC, name = "P17", legendgroup = userName, type = "scatter", mode = "lines")


subplot(plotDayCompletion1, plotDayCompletion2, 
        plotDayCompletion3, nrows = 3, margin = 0.05)

subplot(plotDayCompletion4, plotDayCompletion5, 
        plotDayCompletion6, nrows = 3, margin = 0.05)

subplot(plotDayCompletion7, plotDayCompletion9, 
        plotDayCompletion11, nrows = 3, margin = 0.05)


