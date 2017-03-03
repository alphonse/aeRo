chooseFilterStart <- function(X, xlim = c(0, 3000), col = 2, period = 1800) {
  p <- plotly::plot_ly( y = ~X[(xlim[1]:xlim[2]), col], type = 'scatter', mode = 'lines' ) %>%
    plotly::layout(
      xaxis = list(title = 'Data Point Number'),
      yaxis = list(title = 'Mic Intensity for 405nm (mV)')
    )
  print(p)

  startpt <- as.numeric(readline("Find start of filter on graph and input here: "))
  X[startpt:((nrow(X)-1)-((nrow(X)-startpt)%%period)), ]
}
