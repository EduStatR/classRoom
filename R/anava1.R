anava1<-function (x, y, alpha = 0.05,graf=TRUE)
{
    an <- aov(y ~ factor(x))
    fcalc <- round(summary(an)[[1]][1, 4], 3)
    n1 <- length(unique(x))
    n2 <- length(y) - n1
    if(!graf) graphics.off()
    a <- round(qf(alpha, df1 = n1 - 1, df2 = n2, ncp = 0, lower.tail = FALSE,
        log.p = FALSE), 3)
    df1 = n1 - 1
    df2 = n2
    if (df2 == 1) {
        b = 250
    }
    else (b = 10)
    curve(df(x, df1 = df1, df2 = df2), from = -0.001, to = b,
        col = "blue", ylab = "", xlab = "", bty = "l", las = 1)
    abline(v = a, lwd = 2, col = 3, lty = 2)
    abline(h = 0)
    axis(1, c(a, fcalc), labels = c(a, fcalc), col.axis = "red",
        padj = -1)
    rx <- seq(fcalc, 650, by = 0.001)
    ry <- numeric(2 * length(rx))
    ry[1:length(rx)] <- df(rx, df1, df2)
    rx <- c(rx, rev(rx))
    polygon(rx, ry, col = "red")
    abline(v = a, lwd = 2, col = "blue", lty = 2)
    abline(v = fcalc, lwd = 2, col = 3, lty = 2)
    abline(h = 0)
    legend("topright", legend = c("Area = valor-p", "Limite da regiao critica",
        "Estatistica de teste"), pch = c(15, NA, NA), lwd = 2,
        lty = c(-1, 2, 2), col = c("red", "blue", "green"), bty = "o",
        title = "Legenda", box.lty = 1, box.lwd = 2, box.col = "black",
        bg = "lightyellow", cex = 0.7)
    legend(0, 0.3, legend = c("Região de não \n rejeição H0"),
        bty = "n", cex = 0.7)
    legend(a, 0.3, legend = c("Região de \n rejeição H0"),
        bty = "n", cex = 0.7)
    A <- matrix(c(tapply(y, x, length),
    round(tapply(y, x, mean, na.rm = TRUE), 4),
    round(tapply(y, x, var, na.rm = TRUE), 4)
  ),ncol = 3, byrow = FALSE,  dimnames = list(
    unique(x),
    c("n", "x̅", "s²")
  )
)
    cat("------------------------\n")
    cat("Resultados:\n")
    print(A)
    cat("\nMedia geral = ", round(mean(y), 2), "\n")
    cat("VE = ", round(summary(an)[[1]][1, 3], 4), "\n")
    cat("VD = ", round(summary(an)[[1]][2, 3], 4), "\n")
    cat("Fc = ", round(summary(an)[[1]][1, 4], 3), "\n")
    cat("F", "(", alpha * 100, "%,", n1 - 1, ",", n2, ")=", round(a[1],
        3), "\n")
    cat("Valor-p = ", round(summary(an)[[1]][1, 5], 4), "\n")
    cat("------------------------\n")
}



