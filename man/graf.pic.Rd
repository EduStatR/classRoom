\name{graf.pic}
\alias{graf.pic}

\title{
Pictograma
}
\description{
Confecciona um pictograma de um conjunto de dados e imagens
}
\usage{
graf.pic(x,
         y,
         figura,
         valor,
         xlab = "",
         ylab = "",
         legenda = TRUE,
         legend.lab = NULL,
         label=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel do eixo-x.
}
  \item{y}{nome da variavel ou da coluna do banco de dados que identifica a variavel do eixo-y.
}
  \item{figura}{caminho para o arquivo de imagem utilizado na construcao do grafico. Pode ser o endereco completo
da figura no computador ou apenas o nome do arquivo quando a imagem estiver
armazenada na pasta \code{inst/extdata} do pacote. Veja \bold{Note} para outros detalhes.}
    \item{valor}{indica o numero de unidades de y que a imagem representa. As vezes e necessario aumentar ou diminuir o valor para a imagem ficar melhor.}
    \item{xlab}{nomeia a variavel apresentada no eixo horizontal.}
  \item{ylab}{nomeia a variavel apresentada no eixo vertical.}
  \item{legenda}{logico. Se \code{TRUE}, exibe a legenda. Se \code{FALSE}, nao exibe a legenda.}
  \item{legend.lab}{texto da legenda do grafico. Se \code{NULL}, uma legenda padrao e gerada automaticamente.}
  \item{label}{logico. Se \code{TRUE}, exibe os valores da variavel resposta sobre as imagens. Se \code{FALSE}, os valores nao sao apresentados.}


}
\details{Permite obter um grafico pictorico}
\value{Retorna um grafico pictorico}
\references{OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
}
\author{
Willian Alves Lion,

Beatriz de Oliveira Rodrigues,

Felipe de Melo Taveira,

Adriana Dias,
\email{adriana.dias@unifal-mg.edu.br}

Flavio Bittencourt,
\email{flavio.bittencourt@unifal-mg.edu.br}


}
\note{Observacoes:
\enumerate{
\item Ha algumas imagens no pacote, como: \code{R.png}, \code{classR.png}, etc.
\itemize{
\item Para utilizar somente uma e so declarar \code{figura = "nome.png"}.
\item Para utilizar \emph{n} difentes imagens no mesmo grafico, use:

\code{figura = c("nome_1.png", "nome_2.png", ..., "nome_n.png")}

}
\item Se a imagem estiver em seu computador, veja o endereco completo da imagem, \bold{inverta as barras}.
\itemize{
\item Uma imagem:

\code{figura="C:/Users/Usuário/Desktop/nome.png"}

\item Varias imagens - pode ate vir de locais diferentes:

\code{figura=c("C:/Users/Usuario/Desktop/nome_1.png",

                "C:/Users/Usuario/Documents/nome_2.png",

                ...,

                "C:/Users/Usuario/Downloads/nome_n.png")

                }

}
\item O pacote possui algumas imagens disponiveis, veja \code{\link{figuras.pict}} para consultar os nomes.
}
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
A lista de figuras disponiveis pode ser obtida em \code{\link{figuras.pict}}.
}

\examples{
data(banco7)
attach(banco7)

graf.pict(x=anos,
          y=livros,
          figura="R.png",
          valor=4,
          xlab = "Ano de publicação",
          ylab = "Número de livros publicados",
          legenda = TRUE,
          legend.lab = "livros",
          label=TRUE)
#=================================================

graf.pict(x=c("Coracão","Cérebro","Pulmão","Estômago","Fígado","Rim"),
          y=c(40,23,14,8,19,32),
          #figura=rep("R.png",6),
          figura=c("coracao.png","cerebro.png","pulmao.png","estomago.png","figado.png", "rim.png"),
          valor=7,
          xlab = "Órgãos",
          ylab = "Frequência",
          legenda = TRUE,
          legend.lab = "órgãos",
          label=TRUE)
#================================================

graf.pict(x=c("Abacaxi","Alface","Brócolis","Morango","Batata"),
          y=c(2,5,8,3,8),
          figura=c("abacaxi.png","alface.png","brocolis.png","morango.png","batata.png"),
          valor=4,
          xlab = "Vegetais",
          ylab = "Quantidade",
          legenda = TRUE,
          legend.lab = NULL,
          label=TRUE)
#=================================================

graf.pict(x=c("Galinha","Porco","Vaca","Ovelha","Cavalo"),
          y=c(98,50,80,25,16),
          figura=c("galo.png","porco.png","vaca.png","ovelha.png","cavalo.png"),
          valor=20,
          xlab = "Animais na fazenda",
          ylab = "Quantidade",
          legenda = TRUE,
          legend.lab = "animais",
          label=TRUE)



}
