\name{anava2}
\alias{anava2}
\title{Analise de variancia com um fator (one-way anova)
}
\description{Realiza a analise de variancia apresentando a media geral, o valor da variancia entre e dentro, o valor da estatisitica de teste, o valor do quantil da distribuicao F e o valor-p
}
\usage{
anava2(grupos,alpha=0.05)
}
\arguments{
  \item{grupos}{valor correspondente ao numero de grupos em teste
}
\item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
}
\details{Permite obter a media geral, o valor da variancia entre e dentro, o valor da estatisitica de teste, o valor do quantil da distribuicao F e o valor-p
}
\value{Retorna a media geral, o valor da variancia entre e dentro, o valor da estatisitica de teste, o valor do quantil da distribuicao F e o valor-p}
\references{
Pagano, M.; Gauvreau, K. Principios de bioestatistica. 2. ed. Sao Paulo: Cengage Learning, 2012. p. 506.
}
\author{Adriana Dias,
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
anava2(grupos=3,alpha=0.05)

#insira os valores abaixo nos campos onde tem zeros:
#          ni      Media      Variancia
#          21      2.63        0.2462
#          16      3.03        0.2738
#          23      2.88        0.2477

}
