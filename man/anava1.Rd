\name{anava1}
\alias{anava1}
\title{Analise de variancia com um fator (one-way anova) com uso de um banco de dados
}
\description{Realiza a analise de variancia apresentando estatisticas dos grupos em teste, a media geral, o valor da variancia entre e dentro, o valor da estatisitica de teste, o valor do quantil da distribuicao F e o valor-p
}
\usage{
anava1(x,y,alpha=0.05)
}
\arguments{
\item{x}{nome da variavel ou da coluna do banco de dados que identifica os grupos testados}
\item{y}{nome da variavel ou da coluna do banco de dados que identifica a variavel observada.}
\item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
}
\details{Permite obter estatisticas dos grupos em teste, a media geral, o valor da variancia entre e dentro, o valor da estatisitica de teste, o valor do quantil da distribuicao F e o valor-p

}
\value{Retorna estatisticas dos grupos em teste, a media geral, o valor da variancia entre e dentro, o valor da estatisitica de teste, o valor do quantil da distribuicao F e o valor-p}
\references{
PAGANO, M.; GAUVREAU, K. Principios de bioestatistica. 2. ed. Sao Paulo: Cengage Learning, 2012. p. 506.
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
data(banco2)
attach(banco2)
anava1(grupos,FEV,alpha=0.01)

}
