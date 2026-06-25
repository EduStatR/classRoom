\name{graf.pontos}
\alias{graf.pontos}
\title{
Grafico de pontos
}
\description{
Confecciona um grafico de pontos de um conjunto de dados}
\usage{
graf.pontos(x,
            xlab="Titulo do eixo-x",
            ylab="Titulo do eixo-y",
            col="blue",
            cex=4)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel}
  \item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
  \item{ylab}{nomeia a variavel apresentada no eixo vertical.}
  \item{col}{define a cor das colunas do grafico, o \emph{default} e blue.}
  \item{cex}{define o "tamanho" dos circulos, o \emph{default} e 4.}
}
\details{Permite obter um grafico de pontos
}
\value{Retorna um grafico de pontos
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
graf.pontos(filhosMM,col="red",xlab="Número de filhos",ylab="Número de alunos",cex=1)

}
