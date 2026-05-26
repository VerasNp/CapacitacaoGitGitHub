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
- Início com template;
- Adicionar `README.md`: Arquivo que fica na raiz do projeto e serve como uam descrição;
- Adicionar `.gitignore`: Conjunto de  arquivos que o git não deve versionar;
- Adicionar licença: Não entra no escopo desse curso.

=== Sincronização

Com o repositório criado volte no seu projeto e na raiz do projeto use o comando `git remote add origin <url>` para poder assim adicionar...

Agora use o comando `git push origin <branch_name>` para enviar as alterações para o repositório criado no GitHub.

Cheque na página que os arquivos existente localmente foram enviados e com isso você poderá fazer o download dele em outra máquina.
