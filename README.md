<img width="300" height="" alt="image" src="https://github.com/user-attachments/assets/15345ac7-f0de-422a-a358-9e6fe988a87d" />


# 📊 Estatística Básica com o pacote **classRoom**

Aprenda Estatística de forma simples, prática e interativa utilizando o **classRoom**, um pacote desenvolvido para auxiliar professores e estudantes na disciplina de Estatística Básica.

O pacote reúne funções didáticas para análise de dados, construção de gráficos e realização de testes estatísticos, permitindo que o usuário concentre seus esforços na compreensão dos conceitos e na interpretação dos resultados, em vez de se preocupar com detalhes de programação.

## 🚀 Instalação

No **R**, execute os comandos abaixo.

### 1️⃣ Instale o pacote `remotes`

Caso ainda não o tenha instalado:

```r
install.packages("remotes",
                 repos = "https://cloud.r-project.org")
```

### 2️⃣ Instale o pacote **classRoom** diretamente do GitHub

```r
remotes::install_github("EduStatR/classRoom")
```

### 3️⃣ Carregue o pacote

```r
library(classRoom)
```

> Também é possível utilizar:
>
> ```r
> require(classRoom)
> ```

### 4️⃣ Consulte a documentação

Para visualizar todas as funções disponíveis:

```r
help(package = "classRoom")
```

Para acessar a ajuda de uma função específica:

```r
?graf.box
```

ou

```r
help(graf.box)
```

## 📖 Como citar o classRoom

Se você utilizar o pacote **classRoom** em trabalhos científicos, cite:

Bittencourt, F.; Dias, A.; Nogueira, D. A.; Fonseca, N. S. M. **classRoom: um pacote R para apoio ao ensino e a aprendizagem de Estatistica.**      Pensar Acadêmico, v.23, n.5, p.659-673, 2026.

---

## 📚 Objetivo

O **classRoom** foi desenvolvido para apoiar o ensino e a aprendizagem de Estatística, oferecendo funções simples e intuitivas para que professores e estudantes possam dedicar mais tempo à análise e interpretação dos resultados e menos tempo à programação.

Bom estudo!
