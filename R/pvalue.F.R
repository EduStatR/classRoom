pvalue.F <- function(fcalc, df1, df2,graf=TRUE){

 if(!graf) graphics.off()
  a <- pf(fcalc, df1, df2, lower.tail = FALSE)

  if(fcalc < 10){
    b<-12
  } else {
    b<-fcalc*1.1
  }

  curve(df(x, df1 = df1, df2 = df2),
        from = -0.001, to = b,
        col = "blue", ylab = "Densidade", xlab = "F",
        bty = "l", las = 1)

  abline(h = 0)

  axis(1, at = fcalc,
       labels = round(fcalc, 3),
       col.axis = "red",padj = -2,cex.axis=.7)

  rx <- seq(fcalc, b, by = 0.001)
  ry <- df(rx, df1, df2)

  polygon(c(rx, rev(rx)),
          c(ry, rep(0, length(ry))),
          col = "red")

  abline(v = fcalc, lwd = 2, col = 3, lty = 2)

  legend("topright",
         legend = c("Área = valor-p", "Estatística de teste"),
         pch = c(15, NA),
         lwd = 2,
         lty = c(NA, 2),
         col = c("red", "green"),
         bty = "o",
         title = "Legenda",
         bg = "lightyellow",
         cex = 0.7)

  cat("------------------------------------\n")
  cat("Resultado:\n")

  if (a < 1e-4) {
    cat("Valor-p < 0.0001\n")
  } else {
    cat("Valor-p =", sprintf("%.4f", a), "\n")
  }
  cat("------------------------------------\n")

}

