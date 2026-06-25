\name{graf.col}
\alias{graf.col}
\title{
Grafico de colunas simples
}
\description{
Confecciona um grafico de colunas simples de um conjunto de dados
}
\usage{
graf.col(x,
         xlab="Titulo do eixo-x",
         ylab="Titulo do eixo-y",
         col="darkblue")
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel}
  \item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
  \item{ylab}{nomeia a variavel apresentada no eixo vertical.}
  \item{col}{define a cor das colunas do grafico, o \emph{default} e darkblue.}
}
\details{Permite obter um grafico de colunas
}
\value{Retorna um grafico de colunas
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
graf.col(cineMM,xlab="Numero de vezes que vai ao cinema por semana",ylab="Numero de alunos",
         col="darkblue")
}
