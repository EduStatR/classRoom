\name{reglin}
\alias{reglin}

\title{Regressao linear simples
}
\description{Apresenta a equacao ajustada, o coeficiente de determinacao e realiza o teste de hipotese bilateral para o coeficiente angular da reta

}
\usage{
reglin(x,y,alpha=0.05,graf=TRUE,xlab="nome da variavel",ylab="nome da variavel")
}

\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel independente}
  \item{y}{nome da variavel ou da coluna do banco de dados que identifica a variavel dependente}
  \item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
  \item{graf}{confecciona o grafico se TRUE (\emph{default})}
    \item{xlab}{permite nomear a variavel apresentada no eixo horizontal}
  \item{ylab}{permite nomear a variavel apresentada no eixo vertical}
}
\details{Permite obter a equacao ajustada, o coeficiente de determinacao e realiza o teste de hipotese bilateral para o coeficiente angular da reta

}
\value{Retorna a equacao ajustada, o coeficiente de determinacao e realiza o teste de hipotese bilateral para o coeficiente angular da reta

}
\references{
OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.

PAGANO, M.; GAUVREAU, K. Principios de bioestatistica. 2. ed. Sao Paulo: Cengage Learning, 2012. p. 506.
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

reglin(X,Y,alpha=0.05,graf=TRUE,xlab="Ano",ylab="Taxa de fatalidade")

reglin(lnX,Y,alpha=0.05,graf=TRUE,xlab="Logaritmo do ano",ylab="Taxa de fatalidade")

}
