\name{scheffe.test}
\alias{scheffe.test}
\title{
Teste Scheffe considerando um conjunto de dados e informacoes da ANAVA
}
\description{Realiza o teste Scheffe em um conjunto de dados, necessitando de informacoes da ANAVA
}
\usage{
scheffe.test(trat, resp, GLRes, SQRes, alpha = 0.05)
}
\arguments{
  \item{trat}{nome da variavel ou da coluna do banco de dados que identifica os grupos (tratamentos) testados}
  \item{resp}{nome da variavel ou da coluna do banco de dados que identifica a variavel resposta}
  \item{GLRes}{graus de liberdade do residuo}
  \item{SQRes}{soma de quadrados do residuo}
  \item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
}
\details{Permite a realizacao do teste Scheffe em um banco de dados solicitando dados da ANAVA
}
\value{Retorna as estatisticas do teste Scheffe
}
\references{

}

\author{Adriana Dias,
\email{adriana.dias@unifal-mg.edu.br}

Flavio Bittencourt,
\email{flavio.bittencourt@unifal-mg.edu.br}

\author{Felipe de Melo Taveira}

\author{Beatriz de Oliveira Rodrigues}

}
\note{Para realizar o teste Scheffe e necessario um banco de dados contendo a variavel independente, a variavel dependente (resposta) e informacoes da ANAVA.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
resp<-c(12.5,12.5,8.5,12.5,13.5,11.5,10.5,7.5,12.5,14.5,11.5,10.5,8.5,10.5,15.5,
     13.5,11.5,6.5,11.5,13.5)
trat<-rep(c(1,2,3,4,5),4)
data.frame(trat,resp)

scheffe.test(trat, resp, GLRes=15, SQRes=23.456, alpha = 0.05)


}
