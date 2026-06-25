\name{graf.diag}
\alias{graf.diag}
\title{Diagrama de dispersao
}
\description{
Apresenta o diagrama de dispersao de um conjunto de dados
}
\usage{
graf.diag(x,y,xlab="Título do eixo-x",ylab="Titulo do eixo-y")
}

\arguments{
 \item{x}{nome da variavel ou da coluna do banco de dados que identifica uma variavel}
  \item{y}{nome da variavel ou da coluna do banco de dados que identifica a outra variavel}
  \item{xlab}{permite nomear a variavel apresentada no eixo horizontal}
  \item{ylab}{permite nomear a variavel apresentada no eixo vertical}
}
\details{
Permite obter o diagrama de dispersao do conjunto de dados
}
\value{Retorna o diagrama de dispersao do conjunto de dados
}
\references{
OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.

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
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

data(banco4)
attach(banco4)

graf.diag(x,y,xlab="Ano",ylab="Taxa de fatalidade")
graf.diag(lnX,Y,xlab="Logaritmo do ano",ylab="Taxa de fatalidade")

}
