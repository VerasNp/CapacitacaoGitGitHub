= Branches

O uso delas é outro grande ponto chave na escolha de uma ferramenta como o Git. A partir dela podemos fazer o desenvolvimento de diferentes partes do projeto de formas paralelas sem que uma parte necessariamente interfira na outra.

No uso do git é usado por padrão a branch `master`/`main` ou principal para indicar o estado mais estável do código fonte, ou seja, nessa branch reside todo um conjunto de arquivos consolidados e que podem ser utilizados sem problemas e o uso de uma branch diferente da `master`/`main` é uma boa prática para não afetar a parte principal, a não ser quando todas as alterações forem de fato consolidadas.

Mas como uma branch diferente sabe exatamente dos commits que já aconteceram? Isso ocorre dado que a cada commit realizado o Git mantêm uma estrutura de árvore ligando cada commit a seu antecessor, dessa maneira ele consegue saber do histórico sem se perder da origem.

== `git branch`

#columns(2, gutter: 8pt)[
  Para realizar a listagem das branches existentes no repositório podemos utilizar o comando `git branch`. A criação de branches pode ser realizada usando o comando `git branch <nome>`. Para mudar para uma branch é usando o comando `git checkout <nome>`

  Outras formas de gerenciar branches:
  - `git switch`: Comando mais recente e recomendado para criação e mudança de branch, pois é mais intuitivo e específico para essa função.

  #colbreak()

  Esse processo de criação e mudança de branch pode ser feita usando apenas um comando `git checkout -b <nome>`

  #figure(
    image("../../public/imgs/GitCheckoutScreenshot.png", width: 80%),
  )
]

== Branches remotas

#columns(2, gutter: 8pt)[
  Branches remotas são aquelas que estão hospedadas em um servidor, ou seja, não estão localmente. Para realizar a listagem de branches remotas podemos usar o comando `git branch -r`. Para criar uma branch remota é necessário primeiro criar a branch local e depois usar o comando `git push -u origin <nome>` para subir a branch para o repositório remoto. Visualize as branches remotas também usando `git branch -a` que mostra tanto as branches locais quanto as remotas.

  #colbreak()

  - O `origin` é o nome do repositório remoto que foi configurado quando o repositório foi clonado, isso é possível ser visualizado ao usar o comando `git remote -v`, no caso dois serão listados, um para o fetch e outro para o push, ambos com a URL do repositório remoto.

  O uso da flag `-u` significa que estamos adicionando um "upstream" para a branch, ou seja, estamos associando a branch local com a branch remota. Isso influencia em comando encurtados como `git push` e `git pull`, que sem a flag `-u` exigiriam a especificação do repositório remoto e da branch toda vez, mas com a flag `-u` eles já sabem para onde enviar ou de onde puxar as mudanças.
]

No GitHub é possível criar branches diretamente na plataforma, para isso basta acessar a página do repositório e clicar no menu de branches, depois clicar em "New branch" e escolher um nome para a nova branch. A partir disso a branch já estará disponível para ser utilizada localmente usando o comando `git checkout <nome>`.


