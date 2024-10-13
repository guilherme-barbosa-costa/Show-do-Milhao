# Show-do-Milhao
Desenvolvi um jogo baseado no "Show do Milhão" utilizando Java Swing e MySQL.

Passo a Passo para Rodar o Projeto do Jogo "Show do Milhão"
Instalação do Java e NetBeans:

Primeiro, você precisa ter o Java Development Kit (JDK) instalado na sua máquina. Baixe a versão mais recente no site oficial da Oracle.
Em seguida, instale o NetBeans 8.2, que será a IDE utilizada para o desenvolvimento.
Configuração do MySQL:

Instale o MySQL Server e, se desejar, o MySQL Workbench para gerenciar o banco de dados.
Abra o MySQL Workbench e conecte-se ao seu servidor MySQL.
Importar o Banco de Dados:

No MySQL Workbench, vá em File > Open SQL Script.
Selecione o arquivo quizShowDoMilhao.sql, que está no projeto, e abra o script SQL no editor.
Execute o script clicando no ícone de relâmpago (Execute) ou pressionando Ctrl + Shift + Enter. Isso criará o banco de dados quizDB e a tabela perguntas com os dados necessários.
Incluir o Driver JDBC:

Baixe o driver JDBC do MySQL (mysql-connector-java.jar).
No NetBeans, clique com o botão direito no projeto, vá em Properties > Libraries > Add JAR/Folder e adicione o arquivo mysql-connector-java.jar.
Importar o Projeto no NetBeans:

Se o projeto estiver em um arquivo zip, descompacte-o em uma pasta de sua escolha.
No NetBeans, vá em File > Open Project e selecione a pasta do projeto descompactado.
Configurar a Conexão com o Banco de Dados:

Abra a classe que gerencia a conexão com o banco de dados (por exemplo, Conexao.java) e verifique se as informações de conexão (URL, usuário e senha) estão corretas para o seu ambiente.
Executar o Projeto:

Clique com o botão direito no projeto no painel de projetos do NetBeans e selecione Run.
A aplicação deve abrir e carregar a interface do jogo.
Testar a Aplicação:

Interaja com a aplicação, respondendo às perguntas apresentadas.
Verifique se as respostas estão sendo verificadas corretamente e se a pontuação é atualizada.
Solução de Problemas:

Se ocorrerem erros de conexão, verifique se o MySQL Server está em execução e se as credenciais de acesso estão corretas.
Consulte o console de saída do NetBeans para mensagens de erro que possam ajudar na identificação de problemas.
