= Comandos básicos

Vamos inciar montando a estrutura inicial do nosso projeto a ser utilizado:

1. No lugar de preferência crie uma pasta com nome `GitGitHub`;
2. Abra o terminal na pasta em questão e então digite o seguinte comando para iniciar o versionamento dos arquivos presentes na pasta: `git init`;
  1. Perceba a mensagem que aparece, pode ser que surjam dúvidas sobre, mas explique que o nome padrão é `master` mas possível alterar, mais detalhes sobre _branches_ posteriormente.
3. Crie um arquivo chamado `intro.md`
  1. O arquivo criado foi um arquivo _Markdown_, uma linguagem de marcação para documentos.
4. Use o comando `git status` para observar o estado do arquivo até o momento em relação ao Git.
  1. Até o momento o Git não está rastreando o arquivo, logo o estado que se encontra é _Untracked_.
5. Adicione o arquivo ao versionamento com Git usando o comando `git add intro.md`
  1. Ao usar o comando `git status` perceba que a mensagem muda para informar que há mudanças a serem consolidadas, ou seja, o arquivo passou para um estado _Tracked e staged_.
6. Vamos consolidar fazendo então o "commit" com o comando `git commit -m "Mensagem de commit"`
  1. Ao usar o comando `git status` perceba que nada é exibido;
  2. Se for impossibilitado de "commitar" pode ser dado a necessidade de configurar o usuário.
7. Adicione o conteúdo:
  ```md
  # Introdução

  Batata quente
  ```
  1. Após isso use o comando `git status` e perceba que o git identifica mudanças, o arquivo se encontra agora _Tracked e modified_.
8. Ao fazer o `git add intro.md` e commitar com `git commit -m "Mudança"` será usado o `git log` para vermos o histórico de commits realizados até o momento.
