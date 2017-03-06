matplot.hijack <- hijack(matplot,
                type = 'l', lty = c(rep('solid', 4), 'dashed'), lwd = 2,
                xlab = 'Time',
                ylab = expression(paste(alpha[PAS-CRD], ' (M', m^-1, ')')),
                col = c('purple', 'forestgreen', 'red', 'darksalmon', 'red')
                )
