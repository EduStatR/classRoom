freq.quali <- function(x, graf = FALSE)
{
  if(!graf) graphics.off()

  # Tabela de frequencias
  d <- table(x)

  # Frequencias absolutas
  Fi <- as.numeric(d)

  # Categorias
  categorias <- names(d)

  # Numero de observacoes
  n <- sum(Fi)

  # Frequencias relativas e percentuais
  Fri <- Fi / n
  Fpi <- Fri * 100

  # Saida
  cat("\nDistribuição de frequências\n")
  cat("--------------------------------------------\n")

  cat(sprintf("%-15s %8s %8s %10s\n",
              "Categoria", "fi", "fr", "fp(%)"))

  cat("--------------------------------------------\n")

  for(i in seq_along(categorias))
  {
    cat(sprintf("%-15s %8d %8.2f %10.2f\n",
                categorias[i],
                Fi[i],
                Fri[i],
                Fpi[i]))
  }

  cat("---------------------------------------------\n")

  # Total
  cat(sprintf("%-15s %8d %8.2f %10.2f\n",
              "Total",
              sum(Fi),
              sum(Fri),
              sum(Fpi)))

  cat("---------------------------------------------\n")
  cat("---------------------------------------------\n")
  cat("Nota:\n")
  cat("fi - frequencia absoluta da classe\n")
  cat("fr - frequencia relativa da classe\n")
  cat("fp(%) - frequencia percentual da classe\n")
  cat("---------------------------------------------\n")

  # Grafico de setores
  if(graf)
  {
    graf.pizza(x)
  }
}
