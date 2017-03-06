matplot.hijack <- hijack(matplot,
                type = 'l', lty = c(rep('solid', 4), 'dashed'), lwd = 2,
                xlab = 'Time', xaxs = 'i',
                yaxs = 'i', ylab = expression(paste(alpha[PAS-CRD], ' (M', m^-1, ')')),
                yaxs = 'i',
                col = c('purple', 'forestgreen', 'red', 'darksalmon', 'red')
                )
