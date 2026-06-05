= O merge

Um processo de integração de branches, comum de ser realizado quando precisamos integrar uma branch de desenvolvimento para uma branch principal. Essa ação pode desencadear algumas particularidades que serão abordadas a seguir.

== `git merge`

#columns(2, gutter: 8pt)[
  A partir de um commit A na branch `master` criamos uma branch `topic` e fazemos os commits B e C, ou seja, temos a seguinte configuração:

  #figure(
    image("../../public/imgs/GitCommitsMergeFastForwardExampleScreenshot.png", width: 80%),
  )

  #colbreak()

  Para realizar o merge da branch `topic` para a branch `master` usando o comando `git merge topic` estando na branch `master` e teremos a seguinte configuração:

  #figure(
    image("../../public/imgs/GitAfterMergeFastForwardScreenshot.png", width: 80%),
  )

]

Quando isso acontece podemos ter uma visão com `git log --graph` que ele trata como se a outra branch nunca existiu.

A integração ocorre sem que o git precise fazer grande esforço. Ocorre aqui um *Fast-Forward*.

Após a finalização do merge, a branch `topic` pode ser deletada usando o comando `git branch -d topic` ou `git branch -D topic` caso queira forçar a deleção mesmo que haja mudanças não integradas.

Mas nem tudo são flores, quando temos commits paralelos, ou seja, commits feitos na branch `master` e na branch `topic` a partir do commit A, o merge não é tão simples assim, ele gera um commit do tipo `merge` para indicar que houve um merge. O histórico fica mais complexo, mas ele preserva a estrutura de árvore dos commits, ainda sim é possível haver 2 possibilidades:

1. *Sem ocorrência de conflitos*: Não houve sobreposição de códigos, assim o Git faz o uso do que chamamos *Recursive Strategy*;

#columns(2, gutter: 8pt)[
  A partir de um commit A na branch `master` criamos uma branch `topic` e fazemos o commit B, depois na branch `master` realizamos um commit C, ou seja, temos a seguinte configuração:

  #figure(
    image("../../public/imgs/GitCommitsRebaseMergeExampleScreenshot.png", width: 80%),
  )

  #colbreak()

  Ao realizar o merge da branch `topic` para a branch `master` usando o comando `git merge topic` teremos a seguinte configuração:

  #figure(
    image("../../public/imgs/GitCommitsRebaseMergeExample2.png", width: 80%),
  )
]

Não houve assim conflito e o fit fez a resolução de forma recursiva.

#pagebreak()

#columns(2, gutter: 8pt)[
  2. *Ocorrência de conflitos*: Houve sobreposição de códigos, assim é necessário fazer a resolução dos conflitos nos arquivos identificados de sobreposição e então depois gerar o commit de junção.

  A partir de um commit A de uma arquivo `index.md` na branch `master` realizamos um commit B no mesmo arquivo, depois criamos uma branch `topic` e fazemos o commit C no mesmo arquivo `index.md` de antes e mais um commit D em outro arquivo `footer.md`, ou seja, temos a seguinte configuração:

  #figure(
    image("../../public/imgs/GitConflitoExemple1Screenshot.png", width: 80%),
  )

  #colbreak()

  Vamos aplicar o merge da branch `topic` para a branch `master` usando o comando `git merge topic` estando na branch `master` e teremos a seguinte configuração, a partir daí é apresentada a mensagem de conflito:

  #figure(
    image("../../public/imgs/GitConflitoExample2Screenshot.png", width: 80%),
  )

  Nesse momento o Git entra em estado de "Merging" e é necessário resolver os conflitos para depois realizar o commit de merge. O Git identifica os arquivos que estão em conflito e marca as alterações usando os marcadores `<<<<<<<< HEAD` para indicar o que atualmente existe e `>>>>>>> <nome>` para indicar o que está vindo do merge, para maiores detalhes dos arquivos podemos usar o comando `git status` para identificar os arquivos em conflito:

  #figure(
    image("../../public/imgs/GitConflitoExample3Screenshot.png", width: 80%),
  )

  #figure(
    image("../../public/imgs/GitConflitoExample4Screenshot.png", width: 80%),
  )
]

Após a resolução dos conflitos, ou seja, a escolha de quais mudanças devem permanecer, é necessário adicionar os arquivos usando `git add` e depois criar um novo commit usando `git commit` para finalizar o processo de merge. Observe as mudanças com `git log --graph`.

#figure(
  image("../../public/imgs/GitConflitoExample5Screenshot.png", width: 80%),
)

