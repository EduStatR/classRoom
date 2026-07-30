\name{graf.col}
\alias{graf.col}
\title{
Grafico de colunas/barras simples
}
\description{
Confecciona um grafico de colunas/barras simples de um conjunto de dados
}
\usage{
graf.col(x,
         xlab="Titulo do eixo-x",
         ylab="Titulo do eixo-y",
         col="darkblue",
         orientation=2)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel}
  \item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
  \item{ylab}{nomeia a variavel apresentada no eixo vertical.}
  \item{col}{define a cor das colunas do grafico, o \emph{default} e darkblue.}
  \item{orientation}{define o tipo de grafico, o \emph{default} e grafico de colunas (vertical),
  se \emph{orientation = 1}, o grafico e de barras (horizontal) }
}
\details{Permite obter um grafico de colunas ou barras
}
\value{Retorna um grafico de colunas ou barras
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

graf.col(cineMM,xlab="Numero de alunos",
         ylab="Numero de vezes que vai ao cinema por semana",
         col="red",orientation=2)

graf.col(sexoMM,xlab="Numero de alunos",ylab="Sexo",
         col="red",orientation=1)


}
