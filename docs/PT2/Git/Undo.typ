= Undo

Algumas vezes é necessário desfazer mudanças, seja para corrigir um erro ou para refazer um processo de uma maneira diferente. O Git oferece diversas formas de desfazer mudanças, seja em arquivos, commits ou até mesmo branches.

== Desfazendo mudanças em arquivos

Para desfazer mudanças em arquivos, ou seja, para voltar um arquivo para o estado do último commit, podemos usar o comando `git checkout -- <arquivo>`. Esse comando descarta as mudanças feitas no arquivo até o momento e volta o arquivo para o estado do último commit. Cuidado ao usar esse comando, pois ele descarta as mudanças sem possibilidade de recuperação.

== Desfazendo commits

#columns(2, gutter: 8pt)[
  Para desfazer um commit, ou seja, para voltar o estado do repositório para o estado do commit anterior, podemos usar o comando `git reset --hard HEAD~1`. Esse comando descarta o último commit e todas as mudanças feitas nele, voltando o repositório para o estado do commit anterior. Cuidado ao usar esse comando, pois ele descarta as mudanças sem possibilidade de recuperação.

  #colbreak()

  - Para se guiar melhor é possível usar o comando `git reflog` para visualizar onde a `HEAD` estava até o momento necessário de desfazer o commit ou se preferir usar o hash do commit, basta usar `git reset --hard <hash_commit>`;
  - O uso do `--hard` é necessário para descartar as mudanças feitas no commit, caso contrário, as mudanças ficariam no diretório de trabalho e poderiam ser acidentalmente comitadas novamente.
]

Outra forma de desfazer um commit é usando o comando `git revert <hash_commit>`. Esse comando cria um novo commit que desfaz as mudanças feitas no commit especificado, ou seja, ele mantém o histórico do desenvolvimento, mas desfaz as mudanças feitas no commit especificado. Essa é uma forma mais segura de desfazer um commit, pois ela mantém o histórico do desenvolvimento.

#figure(
  image("../../public/imgs/GitRevertScreenshot.png", width: 80%)
)
