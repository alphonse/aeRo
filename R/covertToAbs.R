convertToAbs <- function(x, bg, p, m, names = c('abs406_Mm', 'abs532_Mm', 'abs662_Mm', 'abs785_Mm')) {
  data.frame((x - bg) / p / m * 1e8) %>%
    setNames(names)
}
