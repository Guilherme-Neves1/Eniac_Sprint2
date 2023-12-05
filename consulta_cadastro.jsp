<%@page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <%
    // Variáveis para o Banco de Dados
    String nomeBanco = "projeto_web";
    String enderecoBanco = "jdbc:mysql://localhost:3306/"+nomeBanco;
    String usuarioBanco = "root";
    String senhaUsuarioBanco = "";

    // Driver
    String driver = "com.mysql.jdbc.Driver";
    
    // Carregar o driver na memória
    Class.forName(driver);

    // Criar a variável para conectar com o Banco de Dados
    Connection conexao;

    // Abrir a conexão com o Banco de Dados
    conexao = DriverManager.getConnection(enderecoBanco, usuarioBanco, senhaUsuarioBanco);

    // Criar o comando sql que ira consultar a tabela (SELECT)
    String sql = "SELECT * FROM usuario_cadastro";

    // Criar o statement para executar o comando no Banco
    PreparedStatement stm = conexao.prepareStatement(sql);




  %>
  
</body>
</html>