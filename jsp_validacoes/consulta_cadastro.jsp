<%@page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Consulta de Cadastros</title>

  <!--------------------- FONTES -------------------->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;700&family=Noto+Sans+Mandaic&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

  <style>
    body {
      background-color: #e8e8e8;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    h1 {
      font-family: 'Roboto', Arial, Helvetica;
      display: flex;
      justify-content: center;
    }

    table, th, td {
      font-family: 'Roboto', Arial, Helvetica;
      border: 1px solid black;
      border-collapse: collapse;
      padding: 10px 10px;
    }

    table {
      display: flex;
      justify-content: center;
      border: none;
      width: 100%;
      margin-top: 25px;
    }

    th {
      text-align: left;
      background-color: rgb(119,136,153);
      color: rgb(0, 0, 0);
    }

    tr:nth-child(even) {
      background-color: rgb(173,216,230);
    }

    tr:hover {
      background-color: rgb(106,90,205);
      cursor: pointer;
    }
  </style>
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

    // Criar uma variável para receber os dados
    // TIPO VARIÁVEL = stm.executeQuery();
    ResultSet dados = stm.executeQuery();

    out.print("<h1> Usuarios Cadastrados </h1>");

    out.print("<table>");
    out.print("<tr>");
      out.print("<th>Codigo</th>");
      out.print("<th>Email</th>");
      out.print("<th>Nome</th>");
      out.print("<th>Sobrenome</th>");
      out.print("<th>CPF</th>");
      out.print("<th>Data de Nascimento</th>");
      out.print("<th>Celular</th>");
      out.print("<th>Senha</th>");
      out.print("<th>Genero</th>");
    out.print("</tr>");

    while(dados.next())
    {
      out.print("<tr>");
        out.print("<td>");
          out.print(dados.getString("codigo"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("email"));  
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("nome"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("sobrenome"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("cpf"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("data_nasc"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("celular"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("senha"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("genero"));
        out.print("</td>");        
      out.print("</tr>");
    }

    out.print("</table>");




  %>
  
</body>
</html>