= Rebase

Podemos modificar o histórico (Project History), alterar a ordem de commits, unir commits e modificar mensagens, isso pode ser de certa maneira perigoso pois os commits são a base do controle de versão, eles servem para documentar o processo, um registro cronológico do desenvolvimento.

== As diferenças entre merge e rebase

#columns(2, gutter: 8pt)[
  O merge é um processo de integração de branches, ele tem a vantagem de preservar o histórico do desenvolvimento, ou seja, ele mantém a estrutura de árvore dos commits. Dizemos que ele é um processo não destrutivo. Contudo, ele gera um histórico mais complexo, com muitos branches e merges, o que pode dificultar a leitura do histórico.

  #colbreak()

  O rebase é um processo de integração de branches que tem a vantagem de manter um histórico linear, ou seja, ele "rebaseia" os commits da branch atual para cima da branch alvo. Ele é um processo destrutivo.
]

== O uso na prática


#columns(2, gutter: 8pt)[
  A partir de um commit A na branch `master` criamos uma branch `topic` e fazemos os commits B, na branch `master` é realizado um commit C, ou seja, temos a seguinte configuração:

  #figure(
    image("../../public/imgs/GitCommitsRebaseMergeExampleScreenshot.png", width: 80%),
  )

  #colbreak()

  Ao realizar o merge da branch `topic` para a branch `master` usando o comando `git merge topic` teremos a seguinte configuração:

  #figure(
    image("../../public/imgs/GitCommitsRebaseMergeExample2.png", width: 80%),
  )
]

O Git faz o uso da *Recursive Strategy* gerando o commit M que serve apenas para indicar que houve um merge, caso em que algumas vezes esse commit pode ser evitado.

#columns(2, gutter: 8pt)[
  Realize um commit A na branch `master`, crie uma branch `topic` e faça o commit B, depois na branch `master` realize um commit C, ou seja, temos a seguinte configuração:

  #figure(
    image("../../public/imgs/GitCommitsRebaseMergeExampleScreenshot.png", width: 80%),
  )

  #colbreak()

  Ao realizar o rebase da branch `topic` para a branch `master` usando o comando `git rebase master` teremos a seguinte configuração:

  #figure(
    image("../../public/imgs/GitCommitRebaseExample3.png", width: 80%),
  )
]

Dessa maneira ao continuar o desenvolvimento na branch `topic` podemos usar um merge do tipo *Fast-Forward*.

Isso merece um cuidado pois quando aplicado rebase *os commits terão novos IDs*, assim é preferível evitar:

- Rebase de branches compartilhadas, ou seja, aquelas que já foram enviadas para um repositório remoto e podem ter sido *usadas por outras pessoas*;

=== Conflitos

Assim como no merge, o rebase também pode gerar conflitos, nesse caso o processo de resolução é o mesmo, ou seja, é necessário resolver os conflitos nos arquivos identificados de sobreposição, contudo com a diferença que ao final fazemos `git rebase --continue` para continuar o processo de rebase.