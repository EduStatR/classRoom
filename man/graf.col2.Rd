\name{graf.col2}
\alias{graf.col2}
\title{
Grafico em colunas compostas
}
\description{
Confecciona um grafico de colunas compostas com frequencias absolutas
}
\usage{
graf.col2(x,
          y,
          xlab="Titulo do eixo-x",
          ylab="Titulo do eixo-y (frequencia)",
          leg.tit="Titulo da legenda (outra variavel)",
          col=c("cyan","lightgreen"))
          }
\arguments{
 \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel principal.}
 \item{y}{nome da variavel ou da coluna do banco de dados que identifica a variavel secundaria}
  \item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
  \item{ylab}{nomeia a variavel (resposta) apresentada no eixo vertical.}
  \item{leg.tit}{nomeia o titulo da legenda (variavel secundaria).}
  \item{col}{permite definir a variacao de cor nas colunas, o \emph{default} e "cyan" a "lightgreen" }
}
\details{
Permite obter um grafico em colunas compostas com frequencias absolutas
}
\value{Retorna um grafico em colunas compostas com frequencias absolutas
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
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(banco)
attach(banco)
graf.col2(x=cineMM,
          y=sexoMM,
          xlab="Numero de vezes que vai ao cinema por semana",
          ylab="Quantidade de pessoas",
          leg.tit="Sexo",
          col=c("black","green"))
}
