# Show-do-Milhao
Desenvolvi um jogo baseado no "Show do Milhão" utilizando Java Swing e MySQL.

Passo a Passo para Rodar o Projeto do Jogo "Show do Milhão"
1. Instalação do Java e NetBeans:

1.1. Primeiro, você precisa ter o Java Development Kit (JDK) instalado na sua máquina. Baixe a versão mais recente no site oficial da Oracle.

1.2. Em seguida, instale o NetBeans 8.2, que será a IDE utilizada para o desenvolvimento.

2. Configuração do MySQL:

2.1. Instale o MySQL Server e, se desejar, o MySQL Workbench para gerenciar o banco de dados.

2.2. Abra o MySQL Workbench e conecte-se ao seu servidor MySQL.

3. Importar o Banco de Dados:

3.1. No MySQL Workbench, vá em File > Open SQL Script.

3.2. Selecione o arquivo quizShowDoMilhao.sql, que está no projeto, e abra o script SQL no editor.

3.3. Execute o script clicando no ícone de relâmpago (Execute) ou pressionando Ctrl + Shift + Enter. Isso criará o banco de dados quizDB e a tabela perguntas com os dados necessários.

4.Incluir o Driver JDBC:

4.1. Baixe o driver JDBC do MySQL (mysql-connector-java.jar).

4.2. No NetBeans, clique com o botão direito no projeto, vá em Properties > Libraries > Add JAR/Folder e adicione o arquivo mysql-connector-java.jar.

5. Importar o Projeto no NetBeans:

5.1. Se o projeto estiver em um arquivo zip, descompacte-o em uma pasta de sua escolha.

5.2. No NetBeans, vá em File > Open Project e selecione a pasta do projeto descompactado.

6.Configurar a Conexão com o Banco de Dados:

6.1. Abra a classe que gerencia a conexão com o banco de dados (por exemplo, Conexao.java) e verifique se as informações de conexão (URL, usuário e senha) estão corretas para o seu ambiente.

7. Executar o Projeto:

7.1. Clique com o botão direito no projeto no painel de projetos do NetBeans e selecione Run.

7.2. A aplicação deve abrir e carregar a interface do jogo.

8. Testar a Aplicação:

8.1. Interaja com a aplicação, respondendo às perguntas apresentadas.

8.2. Verifique se as respostas estão sendo verificadas corretamente e se a pontuação é atualizada.

9. Solução de Problemas:

9.1. Se ocorrerem erros de conexão, verifique se o MySQL Server está em execução e se as credenciais de acesso estão corretas.

9.2. Consulte o console de saída do NetBeans para mensagens de erro que possam ajudar na identificação de problemas.

Seguindo esses passos, você conseguirá rodar o projeto e se divertir com o jogo baseado no "Show do Milhão"! Se precisar de mais ajuda, fique à vontade para perguntar.






