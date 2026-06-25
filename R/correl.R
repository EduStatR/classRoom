correl<-function(x, y, tipo = "B", metodo = "pearson", conf.level = 0.95,
          graf = TRUE, xlab = "nome da variavel X", ylab = "nome da variavel Y",
          exact = NULL, continuity = FALSE)
{
  if (tipo == "B") {alternative = "two.sided"}
  if (tipo == "D") {alternative = "greater"}
  if (tipo == "E") {alternative = "less"}
  corl <- cor.test(x, y, alternative=alternative, method=metodo,
                   exact=exact, conf.level=conf.level, continuity=continuity)
  if (graf == TRUE) {
    plot(x, y, xlab=xlab, ylab=ylab, bty="l", las=1, pch=16)
  }
  else {
    if(!graf) graphics.off()
  }
  if (metodo == "pearson") {
    cat("------------------------------------\n")
    cat("Resultados\n")
    cat(" Correlacao:\n")
    cat("r = ", round(corl$estimate, 4), "\n")
    cat("\n Teste de hipotese:\n")
    cat("tc = ", round(corl$statistic, 4), "\n")
    probs = 1 - conf.level
    n <- length(x)
    a <- qt(probs/2, df = n - 2, lower.tail = FALSE)
    cat("t", "(", probs/2 * 100, "%,", df = n - 2, ")=",
        round(a[1], 3), "\n")
    valor.p <- round(corl$p.value, 4)
    if (valor.p > 0.0001 && valor.p <= 1) {
      cat("Valor-p = ", valor.p, "\n")
    } else {
      cat("Valor-p = <0.0001 \n")
    }

    cat("\n Intervalo de confianca:\n")
    cat("IC(ρ)(", conf.level * 100, "%", ") = [", round(corl$conf.int[1],
                                                        4), ";", round(corl$conf.int[2], 4), "]\n")
    cat("------------------------------------\n")
  }
  if (metodo == "kendall") {
    cat("----------------------------\n")
    cat("Resultados\n")
    cat("tau = ", corl$estimate, "\n")
    cat("T = ", corl$statistic, "\n")
    cat("Valor-p = ", corl$p.value, "\n")
    cat("---------------------------\n")
  }
  if (metodo == "spearman") {
    cat("----------------------------\n")
    cat("Resultados\n")
    cat("rs = ", corl$estimate, "\n")
    cat("S = ", corl$statistic, "\n")
    cat("Valor-p = ", corl$p.value, "\n")
    cat("---------------------------\n")
  }
}





