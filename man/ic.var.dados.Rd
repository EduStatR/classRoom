\name{ic.var.dados}
\alias{ic.var.dados}
\title{
Intervalo de confianca para a variancia populacional com uso de um banco de dados
}
\description{Apresenta os valores dos quantis da distribuicao qui-quadrado, o valor da variancia amostral, o tamanho amostral e o intervalo de confianca para a variancia populacional

}
\usage{
ic.var.dados(x,conf.level=0.95)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel. para a qual o intervalo sera construido}
\item{conf.level}{nivel de confianca, o \emph{default} e 0.95.}
}
\details{Permite obter os valores dos quantis da distribuicao qui-quadrado, o valor da variancia amostral, o tamanho amostral e o intervalo de confianca para a variancia populacional.
}
\value{Retorna os valores dos quantis da distribuicao qui-quadrado, o valor da variancia amostral, o tamanho amostral e o intervalo de confianca para a variancia populacional.
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
ic.var.dados(pesoMM,0.95)

}
