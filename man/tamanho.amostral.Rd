\name{tamanho.amostral}
\alias{tamanho.amostral}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Tamanho amostral
}
\description{
Calcula o tamanho da amostra necessario para estimar uma proporcao e uma media
}
\usage{
tamanho.amostral(tipo = 1,conf.level = 0.95)
}
\arguments{
  \item{tipo}{se \bold{1} (\emph{default}) - calcula o tamanho amostral para estimar uma proporcao, exigindo o valor da proporcao e a margem de erro;

  se \bold{2} - calcula o tamanho amostral para estimar uma media, exigindo o valor do desvio padrao e do tamanho amostral observados em uma amostra piloto e a margem de erro;

  se \bold{3} - calcula o tamanho amostral para estimar uma media, exigindo o valor do desvio padrao populacional e a margem de erro}
  \item{conf.level}{nivel de confianca, o \emph{default} e 0.95}
}
\details{Permite obter o tamanho amostral para estimar uma proporcao ou uma media
}
\value{Retorna o tamanho amostral para estimar uma proporcao ou uma media
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Adriana Dias,
\email{adriana.dias@unifal-mg.edu.br}

Denismar Alves Nogueira,
\email{denismar.nogueira@unifal-mg.edu.br}

Flavio Bittencourt,
\email{flavio.bittencourt@unifal-mg.edu.br}

Natalia da Silva Martins Fonseca,
\email{natalia.martins@unifal-mg.edu.br}

}
\note{Ao atribuir um numero ao argumento \bold{tipo} e executar a funcao, a janela \bold{Data Viewer} sera aberta, permitindo a inclusao das informacoes nas respectivas celulas com o valor inicial \emph{NA}:

\itemize{
  \item Se \bold{tipo = 1}, insira o valor da \emph{proporcao} na celula \eqn{prop}, e da \emph{margem de erro} na celula \eqn{m.erro};
  \item Se \bold{tipo = 2}, insira o valor do \emph{desvio-padrao amostral} na celula \eqn{s.ap}, do \emph{tamanho da amostra piloto} na celula \eqn{n.ap} e da \emph{margem de erro} na celula \eqn{m.erro}. Alem disso, defina se o calculo sera \emph{iterativo} (\bold{iter = TRUE}) ou nao (\bold{iter = FALSE}), o \emph{default} e FALSE;
  \item Se \bold{tipo = 3}, insira o valor do \emph{desvio-padrao populacional} na celula \eqn{sigma} e da \emph{margem de erro} na celula \eqn{m.erro}.
}
}



%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#tamanho amostral para uma proporcao
tamanho.amostral(tipo = 1, conf.level = 0.90)
#informe prop=0.20 e m.erro=0.01 para encontrar o tamanho amostral igual a 4328.87

#tamanho amostral para um media

#--com variancia desconhecida
tamanho.amostral(tipo = 2, conf.level = 0.95)
#informe s.ap=0.3; n.ap=20 e m.erro=0.01 para encontrar o tamanho amostral igual a 157.707

#--com variancia desconhecida e pelo metodo iterativo
tamanho.amostral(tipo = 2, conf.level = 0.95)
#informe s.ap=0.3; n.ap=20, m.erro=0.01
#e iter=TRUE para encontrar o tamanho amostral igual a 140.7147

#--com variancia desconhecida
tamanho.amostral(tipo = 3, conf.level = 0.95)
#informe sigma=5; e m.erro=0.98 para encontrar o tamanho amostral igual a 99.99632


}
