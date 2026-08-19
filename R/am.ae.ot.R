am.ae.ot <- function(k, n)
{
  # Verificações
  if(length(k) != 1 || k < 2 || k != as.integer(k))
    stop("'k' deve ser um número inteiro maior ou igual a 2.")

  if(length(n) != 1 || n <= 0 || n != as.integer(n))
    stop("'n' deve ser um número inteiro positivo.")

  # Tabela para edição
  Estrato <- seq_len(k)
  Ni <- numeric(k)
  si <- numeric(k)

  tab_aux <- data.frame(Estrato, Ni, si)

  edicao <- edit(tab_aux)

  # Verificações dos dados
  if(any(edicao$Ni <= 0))
    stop("Os valores de Ni devem ser maiores que zero.")

  if(any(edicao$si < 0))
    stop("Os valores de si não podem ser negativos.")

  if(sum(edicao$Ni) < n)
    stop("O tamanho da amostra não pode ser maior que o tamanho da população.")

  if(sum(edicao$Ni * edicao$si) == 0)
    stop("A soma de Ni*si deve ser maior que zero.")

  # Alocação ótima
  f <- n / sum(edicao$Ni * edicao$si)

  ni <- f * (edicao$Ni * edicao$si)

  # Tabela com os valores calculados
  tab <- data.frame(
    Estrato = edicao$Estrato,
    Ni = edicao$Ni,
    si = edicao$si,
    ni = round(ni, 2)
  )

  # Alocação inteira pelo método dos maiores restos
  ni.int <- floor(ni)

  falta <- n - sum(ni.int)

  if(falta > 0)
  {
    resto <- ni - ni.int
    ordem <- order(resto, decreasing = TRUE)

    ni.int[ordem[seq_len(falta)]] <-
      ni.int[ordem[seq_len(falta)]] + 1
  }

  tab.int <- data.frame(
    Estrato = edicao$Estrato,
    Ni = edicao$Ni,
    si = edicao$si,
    ni = ni.int
  )

  # Saída
  cat("----------------------------------------\n")
  cat("     AMOSTRAGEM ESTRATIFICADA OTIMA\n")
  cat("----------------------------------------\n\n")

  cat("Tamanho da população:  N =", sum(tab.int$Ni), "\n")
  cat("Tamanho da amostra:    n =", sum(tab.int$ni), "\n")
  cat("Ni: tamanho do estrato i\n")
  cat("si: variabilidade do estrato i \n")
  cat("ni: tamanho da amostra a ser selecionada no estrato i\n")
  cat("----------------------------------------\n\n")

  cat("Tamanho amostral calculado para cada estrato:\n\n")

  cat(sprintf("%-10s %8s %8s %10s\n",
              "Estrato", "Ni", "si", "ni"))
  cat("----------------------------------------\n")

  for(i in seq_len(k))
  {
    cat(sprintf("%-10d %8g %8.2f %10.2f\n",
                tab$Estrato[i],
                tab$Ni[i],
                tab$si[i],
                tab$ni[i]))
  }

  cat("----------------------------------------\n\n")

  cat("Tamanho amostral apos ajuste para numeros inteiros:\n\n")

  cat(sprintf("%-10s %8s %8s %10s\n",
              "Estrato", "Ni", "si", "ni"))
  cat("----------------------------------------\n")

  for(i in seq_len(k))
  {
    cat(sprintf("%-10d %8g %8.2f %10d\n",
                tab.int$Estrato[i],
                tab.int$Ni[i],
                tab.int$si[i],
                tab.int$ni[i]))
  }

  cat("----------------------------------------\n")
}
