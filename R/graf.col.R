graf.col <- function(x,
                     xlab = "Titulo do eixo-x",
                     ylab = "Titulo do eixo-y",
                     col = "darkblue") {

  if (!is.numeric(x)) {
    # Frequências para fator
    tab <- table(x)
    lim <- max(tab) * 1.2   # margem superior
    coluna <- barplot(tab,
                      ylim = c(0, lim),
                      ylab = ylab, xlab = xlab,
                      las = 1, col = col)
    text(coluna, tab, labels = tab, pos = 3, cex = 1)
    abline(h = 0)

  } else {
    # Frequências para valores numéricos discretos
    Xi_full <- seq(min(x), max(x))
    d <- table(factor(x, levels = Xi_full))
    Fi <- as.numeric(d)
    Xi <- as.numeric(names(d))

    lim <- max(Fi) * 1.2
    coluna <- barplot(Fi ~ Xi,
                      ylim = c(0, lim),
                      ylab = ylab, xlab = xlab,
                      las = 1, col = col)
    text(coluna, Fi, labels = Fi, pos = 3, cex = 1)
    abline(h = 0)
  }
}
