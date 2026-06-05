= Overview GitHub

O Github é uma plataforma lançada em 2008 para um controle de versão distribuído.

Dentro dele é possível gerenciar os repositórios, conjunto de código versionado, onde é possível o gerenciamento de visibilidade do projeto, visualização de commits, versões, solicitações de pull, gerência de projetos e outras atividades que ajudam na gerência de um projeto colaborativo.

== Repositórios

Os repositórios são o local onde resite do código fonte, ele pode ser privado ou público. Dentre as terminologias que são usadas:

#table(
  columns: 2,
  [*Nome*], [*Significado*],
  [Branch], [Uma versão paralela do código contido no repositório],
  [Clone], [Download de todo o código presente no repositório],
  [Fork],
  [Criação de um novo repositório que compartilha o mesmo código, configurações de visibilidade do repositório "upstream"],

  [Merge], [Pegar mudanças de uma branch e aplicar na outra],
  [Pull Request], [Um pedido de merge de uma branch para outra],
  [Remote], [Repositório armazenado no GitHub e não em seu computador],
  [Upstream],
  [Branch no repositório original que foi realizado o fork ou clone, a branch correspondente no repositório clonado ou forkado se chama "downstream"],
)

=== Criação de repositório

Em sua conta crie um novo repositório, escolha um nome, deixe ele público se desejar.

Algumas configurações iniciais são possíveis, dentre elas:
- Escolha de visibilidade;

=== `README.md`

Uma descrição do projeto

É possível fazer a edição diretamente pelo GitHub.

=== O `.gitignore`

A partir dele é possível especificar arquivos os quais não devem ser versionados pelo Git.

=== Sincronização com `git clone`

A partir do repositório criado vamos fazer a sincronização usando o comando `git clone`. Em uma pasta, abra o terminal e execute `git clone <url>`.

#figure(
  image("../public/imgs/GitCloneScreenshot.png", width: 80%),
)

=== Envio de alterações com `git push`

#columns(2, gutter: 8pt)[
  Vamos adicionar algo para que possamos assim enviar alterações para o nosso repositório remoto no GitHub.

  Na pasta clonada crie um arquivo `index.md`, faça o `git status`, `git add index.md`, `git commit -m "Adição de arquivo"`.

  Agora use o comando `git push` para enviar as alterações para o repositório criado no GitHub.

  #colbreak()

  #figure(
    image("../public/imgs/GitPushScreenshot.png", width: 80%),
  )
]

Cheque na página que os arquivos existente localmente foram enviados e com isso você poderá fazer o download dele em outra máquina.

=== Atualizando o local com `git pull`

A partir do GitHub faremos a criação de um arquivo e então atualizar o repositório local.

No GitHub crie um `footer.md` e commite.

No repositório local perceba a não existência do arquivo que foi criado, assim vamos usar o comando `git pull` para trazer informações de novas mudanças.

#figure(
  image("../public/imgs/GitPullScreenshot.png")
)

Observe os commits com `git log`.