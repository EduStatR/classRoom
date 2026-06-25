\name{ic.dp}
\alias{ic.dp}
\title{
Intervalo de confianca para o desvio padrao populacional
}
\description{Apresenta os valores dos quantis da distribuicao qui-quadrado, o valor do desvio padrao amostral, o tamanho amostral e o intervalo de confianca para o desvio padrao populacional

}
\usage{
ic.dp(dp,n,conf.level=0.95)
}
\arguments{
  \item{dp}{valor do desvio padrao amostral}
  \item{n}{tamanho da amostra}
\item{conf.level}{nivel de confianca, o \emph{default} e 0.95.}
}
\details{Permite obter os valores dos quantis da distribuicao qui-quadrado, o valor do desvio padrao amostral, o tamanho amostral e o intervalo de confianca para o desvio padrao populacional.
}
\value{Retorna os valores dos quantis da distribuicao qui-quadrado, o valor do desvio padrao amostral, o tamanho amostral e o intervalo de confianca para o desvio padrao populacional.
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
ic.dp(4.5,12,0.95)

}
