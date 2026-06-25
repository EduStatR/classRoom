
tamanho.amostral <- function(tipo = 1,
                             conf.level = 0.95,
                             editor = c("edit", "view", "none"),
                             round.up = FALSE,
                             tolerancia = 0.01,
                             max_iter = 100,
                             ...) {
  editor <- match.arg(editor)
  args <- list(...)
  is_interactive <- interactive()

  #funcoes para cada tamanho
  t.amostral.prop <- function(prop, m.erro, conf.level = 0.95, round.up = FALSE) {
    alpha <- 1 - conf.level
    prob <- alpha / 2
    z <- qnorm(prob, lower.tail = FALSE)
    n <- (z * sqrt(prop * (1 - prop)) / m.erro)^2
    if (round.up) n_out <- ceiling(n) else n_out <- n
    cat("----------------------------\n")
    cat("Dimensionamento da Amostra:\n")
    cat("(para estimar proporção)\n")
    cat("n =", n_out, "\n")
    cat("----------------------------\n")
    invisible(n_out)
  }

  t.amostral.media.dt <- function(s.ap, n.ap, m.erro, conf.level = 0.95,
                                  iter = FALSE, tolerancia = 0.01, max_iter = 100,
                                  round.up = FALSE) {
    alpha <- 1 - conf.level
    prob <- alpha / 2
    gl <- n.ap - 1
    if (!iter) {
      t <- qt(prob, df = gl, lower.tail = FALSE)
      n <- (t * s.ap / m.erro)^2
      if (round.up) n_out <- ceiling(n) else n_out <- n
      cat("----------------------------\n")
      cat("Dimensionamento da Amostra:\n")
      cat("(para estimar média, variância desconhecida)\n")
      cat("n =", n_out, "\n")
      cat("----------------------------\n")
      return(invisible(n_out))
    } else {
      iter_count <- 0
      n_ant <- 1
      # inicializa gl com n.ap - 1 (valor informado)
      repeat {
        iter_count <- iter_count + 1
        t <- qt(prob, df = gl, lower.tail = FALSE)
        n_novo <- (t * s.ap / m.erro)^2
        if (abs(n_novo - n_ant) < tolerancia || iter_count >= max_iter) break
        n_ant <- n_novo
        gl <- max(1, round(n_ant) - 1)
      }
      if (round.up) n_out <- ceiling(n_novo) else n_out <- n_novo
      cat("----------------------------\n")
      cat("Dimensionamento da Amostra (convergente):\n")
      cat("Convergência em", iter_count, "iterações\n")
      cat("(para estimar média, variância desconhecida)\n")
      cat("n =", n_out, "\n")
      cat("----------------------------\n")
      return(invisible(n_out))
    }
  }
  t.amostral.media.dnorm <- function(sigma, m.erro, conf.level = 0.95, round.up = FALSE) {
    alpha <- 1 - conf.level
    prob <- alpha / 2
    z <- qnorm(prob, lower.tail = FALSE)
    n <- (z * sigma / m.erro)^2
    if (round.up) n_out <- ceiling(n) else n_out <- n
    cat("----------------------------\n")
    cat("Dimensionamento da Amostra:\n")
    cat("(para estimar média, variância conhecida)\n")
    cat("n =", n_out, "\n")
    cat("----------------------------\n")
    invisible(n_out)
  }

  # auxiliar para transformar e checar
  get_num <- function(x, name) {
    val <- suppressWarnings(as.numeric(x))
    if (length(val) == 0 || is.na(val)) stop(paste0("Parâmetro '", name, "' inválido ou não informado."), call. = FALSE)
    val
  }

  if (tipo == 1) {
    # proporção: espera prop, m.erro
    if (!is.null(args$prop) && !is.null(args$m.erro)) {
      prop <- get_num(args$prop, "prop")
      m.erro <- get_num(args$m.erro, "m.erro")
    } else if (editor == "edit" && is_interactive) {
      df <- data.frame(prop = NA_real_, m.erro = NA_real_)
      df <- utils::edit(df)
      prop <- get_num(df$prop[1], "prop")
      m.erro <- get_num(df$m.erro[1], "m.erro")
    } else if (editor == "view" && is_interactive) {
      df <- data.frame(prop = NA_real_, m.erro = NA_real_)
      utils::View(df)  # mostra
      prop <- as.numeric(readline("Informe prop (ex.: 0.5): "))
      m.erro <- as.numeric(readline("Informe m.erro (ex.: 0.02): "))
      prop <- get_num(prop, "prop")
      m.erro <- get_num(m.erro, "m.erro")
    } else {
      stop("Para tipo = 1 forneça 'prop' e 'm.erro' em ... ou use editor = 'edit'/'view' interativamente.")
    }
    n <- t.amostral.prop(prop = prop, m.erro = m.erro, conf.level = conf.level, round.up = round.up)
    return(invisible(list(n = n, prop = prop, m.erro = m.erro, conf.level = conf.level)))
  }

  if (tipo == 2) {
    # média, variância desconhecida: espera S.ap, n.ap, m.erro, iter (opcional)
    if (!is.null(args$s.ap) && !is.null(args$n.ap) && !is.null(args$m.erro)) {
      s.ap <- get_num(args$s.ap, "s.ap")
      n.ap <- get_num(args$n.ap, "n.ap")
      m.erro <- get_num(args$m.erro, "m.erro")
      iter_flag <- if (!is.null(args$iter)) as.logical(args$iter) else FALSE
    } else if (editor == "edit" && is_interactive) {
      df <- data.frame(s.ap = NA_real_, n.ap = NA_integer_, m.erro = NA_real_, iter = FALSE)
      df <- utils::edit(df)
      s.ap <- get_num(df$s.ap[1], "s.ap")
      n.ap <- get_num(df$n.ap[1], "n.ap")
      m.erro <- get_num(df$m.erro[1], "m.erro")
      iter_flag <- as.logical(df$iter[1])
    } else if (editor == "view" && is_interactive) {
      df <- data.frame(s.ap = NA_real_, n.ap = NA_integer_, m.erro = NA_real_, iter = FALSE)
      utils::View(df)
      s.ap <- as.numeric(readline("Informe s.ap (estimativa do desvio-padrão amostral, ex.: 2): "))
      n.ap <- as.numeric(readline("Informe n.ap (tamanho piloto, ex.: 10): "))
      m.erro <- as.numeric(readline("Informe m.erro (erro tolerado, ex.: 1.2): "))
      iter_flag <- as.logical(readline("Iterativo? (TRUE/FALSE): "))
      s.ap <- get_num(s.ap, "S.ap")
      n.ap <- get_num(n.ap, "n.ap")
      m.erro <- get_num(m.erro, "m.erro")
    } else {
      stop("Para tipo = 2 forneça 's.ap', 'n.ap' e 'm.erro' em ... ou use editor = 'edit'/'view' interativamente.")
    }
    n <- t.amostral.media.dt(s.ap = s.ap, n.ap = n.ap, m.erro = m.erro,
                             conf.level = conf.level,
                             iter = iter_flag,
                             tolerancia = tolerancia,
                             max_iter = max_iter,
                             round.up = round.up)
    return(invisible(list(n = n, s.ap = s.ap, n.ap = n.ap, m.erro = m.erro, iter = iter_flag, conf.level = conf.level)))
  }

  if (tipo == 3) {
    # média, variância conhecida: espera sigma, m.erro
    if (!is.null(args$sigma) && !is.null(args$m.erro)) {
      sigma <- get_num(args$sigma, "sigma")
      m.erro <- get_num(args$m.erro, "m.erro")
    } else if (editor == "edit" && is_interactive) {
      df <- data.frame(sigma = NA_real_, m.erro = NA_real_)
      df <- utils::edit(df)
      sigma <- get_num(df$sigma[1], "sigma")
      m.erro <- get_num(df$m.erro[1], "m.erro")
    } else if (editor == "view" && is_interactive) {
      df <- data.frame(sigma = NA_real_, m.erro = NA_real_)
      utils::View(df)
      sigma <- as.numeric(readline("Informe sigma (desvio-padrão populacional, ex.: 2): "))
      m.erro <- as.numeric(readline("Informe m.erro (erro tolerado, ex.: 1.2): "))
      sigma <- get_num(sigma, "sigma")
      m.erro <- get_num(m.erro, "m.erro")
    } else {
      stop("Para tipo = 3 forneça 'sigma' e 'm.erro' em ... ou use editor = 'edit'/'view' interativamente.")
    }
    n <- t.amostral.media.dnorm(sigma = sigma, m.erro = m.erro, conf.level = conf.level, round.up = round.up)
    return(invisible(list(n = n, sigma = sigma, m.erro = m.erro, conf.level = conf.level)))
  }

  stop("Tipo inválido. Use: 1 = proporção, 2 = média (variância desconhecida), 3 = média (variância conhecida).")
}




