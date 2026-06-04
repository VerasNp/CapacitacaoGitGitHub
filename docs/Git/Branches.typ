= Branches

No uso do git é usado por padrão a branch `master`/`main`.

A cada commit realizado o Git mantêm uma estrutura de árvore ligando cada commit a seu antecessor, dessa maneira ele consegue saber do histórico.

O uso do de branch diferente da master é uma boa prática para não afetar a parte principal, a não ser quando todas as alterações forem de fato consolidadas

== `git branch`

#columns(2, gutter: 8pt)[
  A criação de branches pode ser realizada usando o comando `git branch <nome>`, para então listar as branches locais existentes use o comando `git branch` e mudar para a branch é usando o comando `git checkout <nome>`

  #colbreak()

  Esse processo de criação e mudança de branch pode ser feita usando apenas um comando `git checkout -b <nome>`
]

Ao mudar para a branch pai perceba que os commits são diferentes usando o `git log`

== O merge

#columns(2, gutter: 8pt)[
  O tipo mais comum de merge, ocorre quando temos a seguinte configuração de commits e branchs:

  ```
        A---B---C topic
       /         \
  D---E----------- master
  ```

  A integração ocorre sem que o git precise fazer grande esforço. Ocorre aqui um *Fast-Forward*.

  #colbreak()

  Após terminar é possível fazer a remoção da branch o que passa a ideia que teremos então:

  ```
  D---E---A---B---C master
  ```

  Quando isso acontece podemos ter uma visão com `git log --graph` que ele trata como se a outra branch nunca existiu.
]

Para realizar o merge utilize o comando `git merge <nome>`.

Para fazer a deleção de uma branch podemos usar o comando `git branch -d <nome>`, perceba a listagem usando `git branch`.

Commits paralelos podem gerar a possibilidade de conflitos, como por exemplo algumas funcionalidades foram criadas em uma branch separada mas a medida que o projeto é desenvolvido temos também commits na branch principal. Para isso utilizaremos um merge que gera um commit do tipo `merge`, ainda sim é possível haver 2 possibilidades:

1. Sem ocorrência de conflitos: Não houve sobreposição de códigos, assim o Git faz o uso do que chamamos *Recursive Strategy*, nesse caso é possível visualizar a bifurcação da branch com `git log --graph` ou `git log --graph --oneline`;

#columns(2, gutter: 8pt)[
  2. Ocorrência de conflitos: Houve sobreposição de códigos, assim é necessário fazer a resolução dos conflitos nos arquivos identificados de sobreposição e então depois gerar o commit de junção. Nesse momento o Git entra em um estágio de "Merging", é possível visualizar usando `git status`.

  #colbreak()

  A marcação de alterações são os marcadores `<<<<<<<< HEAD` para indicar o que atualmente existe e `>>>>>>> <nome>` para indicar o que está vindo do merge.
]

Ao final da resolução de conflitos adicione com `git add` e crie um novo commit com `git commit`. Observe as mudanças com `git log --graph`.


