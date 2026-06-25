\name{scheffe.test2}
\alias{scheffe.test2}
\title{
Teste Scheffe considerando as medias dos tratamentos e informacoes da ANAVA
}
\description{Realiza o teste Scheffe em um conjunto de medias necessitando de informacoes da ANAVA
}
\usage{
scheffe.test2(medias, repet, GLRes, SQRes, alpha = 0.05)

}
\arguments{
  \item{medias}{nome do vetor ou da coluna do banco de dados que identifica as medias}
  \item{repet}{nome do vetor ou da coluna do banco de dados que identifica o numero de repeticoes de cada tratamento}
  \item{GLRes}{graus de liberdade do residuo}
  \item{SQRes}{soma de quadrados do residuo}
  \item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
}
\details{Permite a realizacao do teste Scheffe em um conjunto de medias necessitando informar o numero de repeticoes de cada tratamento e dados da ANAVA
}
\value{Retorna as estatisticas do teste Scheffe
}
\references{

}

\author{Adriana Dias,
\email{adriana.dias@unifal-mg.edu.br}

Flavio Bittencourt,
\email{flavio.bittencourt@unifal-mg.edu.br}
}
\note{Para realizar o teste Scheffe e necessario um conjunto (vetor) de medias, um vetor de repeticoes de cada tratamento e informacoes da ANAVA.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

medias<-c(95.5,94.7,91,99.3,85.7) #vetor de medias dos tratamentos
repet<-c(rep(3,5))                #vetor das repeticoes dos tratamentos
GLRes<-10                         #graus de liberdade do residuo
SQRes<-40.8                       #soma de quadrados do resíduo

scheffe.test2(medias, repet, GLRes, SQRes, alpha = 0.05)


}
