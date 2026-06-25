\name{freq.quali}
\alias{freq.quali}
\title{Tabela de distribuicao de frequencias: variavel qualitativa
}
\description{
Confecciona a tabela de distribuicao de frequencias e o gráfico de setores (pizza)
}
\usage{
freq.quali(x,graf=FALSE)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel.}
  \item{graf}{se TRUE, o grafico de setores sera apresentado, o \emph{default} e FALSE.}
}
\details{Esta funcao confecciona a tabela de distribuicao de frequencias de uma variavel qualitativa e apresenta o grafico de setores.}
\value{
Sao retornados a tabela de distribuicao de frequencias contendo as categorias da variavel, as frequencias absolutas (fi), as frequencias relativas (fr), as frequencias percentuais (fp), as frequencias acumuladas absolutas (FA) e as frequencias acumuladas acima (FAp) e o grafico de setores se solicitado.
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
freq.quali(opcineMM,graf=TRUE)

}


