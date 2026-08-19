\name{graf.bastao}
\alias{graf.bastao}

\title{
Grafico de bastao
}
\description{Confecciona um grafico de bastao de um conjunto de dados
}
\usage{
graf.bastao(x,
            xlab="Titulo do eixo-x",
            ylab="Titulo do eixo-y",
            col="blue")
}

\arguments{
\item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel}
  \item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
  \item{ylab}{nomeia a variavel apresentada no eixo vertical.}
  \item{col}{define a cor do grafico, o \emph{default} e blue.}
}
\details{Permite obter um grafico de bastao
}
\value{Retorna um grafico de bastao
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
graf.bastao(idadeMM,
            xlab="Idade em anos completos",
            ylab="Numero de alunos",
            col="red")

graf.bastao(exerMM,
            xlab="Horas completas de exercicio fisico por semana",
            ylab="Numero de alunos",
            col="blue")

}
