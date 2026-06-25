\name{freq.dupla}
\alias{freq.dupla}

\title{Tabela de dupla entrada (contingencia)
}
\description{Confecciona a tabela de dupla entrada e o gráfico de colunas compostas
}
\usage{
freq.dupla(x, y,graf=FALSE)
}
\arguments{
   \item{x}{nome de uma variavel ou da coluna do banco de dados que identifica a variavel.}
     \item{y}{nome de outra variavel ou da coluna do banco de dados que identifica a variavel.}
  \item{graf}{se TRUE, o grafico de colunas compostas com frequencias absolutas sera apresentado, o \emph{default} e FALSE.}
}
\details{Esta funcao confecciona a tabela de dupla entrada e apresenta o grafico de colunas compostas.}
\value{
Sao retornados a tabela de dupla entrada contendo as categorias de cada variavel e o grafico de colunas compostas se solicitado.
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
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(banco)
attach(banco)
freq.dupla(turmaMM,fumaMM,graf=TRUE)
}
