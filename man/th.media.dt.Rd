\name{th.media.dt}
\alias{th.media.dt}
\title{
Teste de hipotese para uma media
}
\description{
Apresenta a media testada, a media amostral, a variancia amostral, o tamanho da amostra, o quantil da distribuicao t, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) critica(s) e o valor-p.
}
\usage{
th.media.dt(mi0,media,var,n,alpha=0.05,tipo="B")
}
\arguments{
  \item{mi0}{valor da media em teste}
  \item{media}{valor da media amostral}
  \item{var}{valor da variancia amostral}
  \item{n}{valor do tamanho amostral}
  \item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
  \item{tipo}{tipo de hipotese em teste, o \emph{default} e "B": teste bilateral, mas ha outras opcoes: "E" para o teste unilateral a esquerda e "D" para o teste unilateral a direita.}
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

th.media.dt(10,10.1,0.06,12,0.15,"B")
}
