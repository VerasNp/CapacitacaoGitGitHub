#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()

= Comandos básicos e fluxo de trabalho

Vamos inciar montando a estrutura inicial do nosso projeto a ser utilizado:

== `git init`
#columns(2, gutter: 8pt)[
  No lugar de preferência crie uma pasta com nome `GitGitHub`; Abra o terminal na pasta em questão e então digite o seguinte comando para iniciar o versionamento dos arquivos presentes na pasta: `git init`;

  #figure(
    image("../public/imgs/GitInitScreenshot.png", width: 80%),
  )

  #colbreak()

  Conceito do *Fluxo de trabalho*: O Git trabalha com um conceito de *Estados*, são eles:
  1. Untracked (Não rastreável): Arquivos que não estão sendo monitorados pelo Git;
  2. Tracked (Rastreável): Arquivos que estão sob o monitoramento do Git;
    1. Unmodified (Não modificado): Arquivo se encontra atualmente sem nenhuma mudança observada pelo Git;
    2. Modified (Modificado): Arquivo tem novas alterações identificadas pelo Git;
    3. Staged (Preparado): Arquivo se encontra em uma área do Git pronto para consolidar essas alterações.
]

== `git config`

#columns(2, gutter: 8pt)[
  Use o comando `git config -l` para ver as configurações válidas do git no projeto.

  Use os comandos: `git config user.name "<nome>"` e `git config user.email "<email>"` para informar o pertencimento de cada mudança que ele identificar.

  #figure(
    image("../public/imgs/GitConfigScreenshot.png", width: 80%),
  )

  #colbreak()

  Essas configurações servem principalmente para informações da pessoa que fará o commit, como email e usuário, entre outras informações utilizadas pela ferramenta Git.

]

== `git status`
Crie um arquivo _Markdown_ chamado `intro.md` para iniciar o trabalho

#columns(2, gutter: 8pt)[
  Use o comando `git status` para observar o estado do arquivo até o momento em relação ao Git.

  #figure(
    image("../public/imgs/GitStatusUntrackedScreenshot.png", width: 80%),
  )

  #colbreak()

  Até o momento o Git não está rastreando o arquivo, logo o estado que se encontra é _Untracked_ (Não rastreado).

  Nem todo o arquivo do projeto precisa necessariamente ser rastreado pelo Git, o que veremos mais adiante uma técnica para justamente ignorar alguns arquivos ou pastas desejadas.
]

== `git add`

#columns(2, gutter: 8pt)[
  Adicione o arquivo ao versionamento com Git usando o comando `git add intro.md`

  #figure(
    image("../public/imgs/GitStatusTrackedStagedScreenshot.png", width: 80%),
  )

  #colbreak()

  Ao usar o comando `git status` perceba que a mensagem muda para informar que há mudanças a serem consolidadas, ou seja, o arquivo passou para um estado _Tracked e staged_.
]

== `git commit`

#columns(2, gutter: 8pt)[
  Vamos consolidar fazendo então o "commit" com o comando `git commit -m "Primeiro commit"`.

  Ao fazer o commit o git cria um código único para cada commit.

  #figure(
    image("../public/imgs/GitCommitEmptyScreenshot.png", width: 80%),
  )

  #colbreak()

  O Git agora pode consolidar as mudanças ao usar o comando `git commit`.

  #figure(
    image("../public/imgs/GitStatusAfterCommitScreenshot.png", width: 80%),
  )
]

#columns(2, gutter: 8pt)[
  Para observar outro possível estado de um arquivo em estado _Tracked_ adicione em `intro.md` o seguinte conteúdo

  ```md
  # Introdução

  Batata quente
  ```

  Observe o que acontece quando executamos `git status`

  #figure(
    image("../public/imgs/GitStatusAfterChangesScreenshot.png"),
  )

  #colbreak()

  O arquivo agora se encontra em um estado _Tracked e modified_
]

Para então consolidar a mudança do conteúdo execute `git commit -m "Mudança"`.

== `git log`

O git log pode ser utilizado para ver o histórico de commits realizados, trazendo também informações como autoria e código único do commit.

#figure(
  image("../public/imgs/GitLogScreenshot.png", width: 80%),
)

== `git checkout`

#columns(2, gutter: 8pt)[
  Pode ser usado para navegar entre versões consolidadas.
  #colbreak()
  Para voltar ao "normal" basta executar `git checkout <branch>`.
]
