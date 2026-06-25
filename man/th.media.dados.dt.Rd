\name{th.media.dados.dt}
\alias{th.media.dados.dt}
\title{
Teste de hipotese para uma media com uso de um banco de dados
}
\description{
Apresenta a media testada, a media amostral, a variancia amostral, o tamanho da amostra, o quantil da distribuicao t, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) critica(s) e o valor-p.
}
\usage{
th.media.dados.dt(mi0,x,tipo="B",alpha=0.05)
}
\arguments{
  \item{mi0}{valor da media em teste}
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel}
    \item{tipo}{tipo de hipotese em teste, o \emph{default} e "B": teste bilateral, mas ha outras opcoes: "E" para o teste unilateral a esquerda e "D" para o teste unilateral a direita.}
\item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
}
\details{
Permite obter a media testada, a media amostral, a variancia amostral, o tamanho da amostra, o quantil da distribuicao t, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) critica(s) e o valor-p.
}
\value{Retorna a media testada, a media amostral, a variancia amostral, o tamanho da amostra, o quantil da distribuicao t, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) critica(s) e o valor-p.
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

x<-c(10.2,9.7,10.1,10.3,10.1,9.8,9.9,10.4,10.3,9.8,10.4,10.2)

th.media.dados.dt(mi0=10,x,tipo="B",alpha=0.05)
}
