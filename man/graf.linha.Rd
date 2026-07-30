\name{graf.linha}
\alias{graf.linha}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Grafico de linha ou de segmento
}
\description{
Confecciona um grafico de linha ou de segmento de um conjunto de dados
}
\usage{
graf.linha(x,
           y,
           xlab = "Título do eixo x",
           ylab = "Título do eixo y",
           col = "blue",
           pch = 16,
           lwd = 2,
           lty = 1,
           labels = TRUE,
           cex = 0.8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel do eixo-x.}
  \item{y}{nome da variavel ou da coluna do banco de dados que identifica a variavel do eixo-y.}
\item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
  \item{ylab}{nomeia a variavel apresentada no eixo vertical.}
  \item{col}{define a cor das colunas do grafico, o \emph{default} e blue.}
  \item{pch}{simbolo utilizado para representar os pontos do grafico. Por exemplo, \code{16} representa um circulo preenchido.}
\item{lwd}{espessura da linha do grafico. Valores maiores produzem linhas mais espessas.}
\item{lty}{tipo da linha utilizada no grafico. Por exemplo, \code{1} representa uma linha continua.}
\item{labels}{logico. Se \code{TRUE}, exibe os valores das frequencias junto aos pontos do grafico. Se \code{FALSE}, os valores nao sao apresentados.}
\item{cex}{fator de ampliacao dos rotulos das frequencias apresentados no grafico, o \emph{default} e 0.8}

}

\details{Permite obter um grafico de linha}
\value{Retorna um grafico de linha
}
\references{OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
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
\note{O grafico de linha e recomendado quando a variavel independente representa o tempo, como dias, meses, anos ou outras sequencias cronologicas.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{graf.linhas}
}}
\examples{

data(banco5)
attach(banco5)

graf.linha(x=ano,
           y=euro,
           xlab = "Ano",
           ylab = "Valor do euro (R$)",
           col = "blue",
           pch = 16,
           lwd = 2,
           lty = 1,
           labels = TRUE,
           cex = 0.8 )


graf.linha(x=mes,
           y=taxa,
           xlab = "Meses",
           ylab = "Taxa (\%)",
           col = "red",
           pch = 16,
           lwd = 2,
           lty = 2,
           labels = TRUE,
           cex = 0.8 )


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
