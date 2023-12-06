<%@page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Consulta de Endere&ccedil;os</title>

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

    div {
      display: grid;
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
    String sql = "SELECT * FROM usuario_endereco";

    // Criar o statement para executar o comando no Banco
    PreparedStatement stm = conexao.prepareStatement(sql);

    // Criar uma variável para receber os dados
    // TIPO VARIÁVEL = stm.executeQuery();
    ResultSet dados = stm.executeQuery();

    out.print("<div>");

    out.print("<h1> Endere&ccedil;os Cadastrados </h1>");

    out.print("<table>");
    out.print("<tr>");
      out.print("<th>Codigo</th>");
      out.print("<th>Titulo</th>");
      out.print("<th>Tipo</th>");
      out.print("<th>CEP</th>");
      out.print("<th>Endere&ccedil;o</th>");
      out.print("<th>N&uacute;mero</th>");
      out.print("<th>Sem N&uacute;mero</th>");
      out.print("<th>Complemento</th>");
      out.print("<th>Bairro</th>");
      out.print("<th>Cidade/Estado</th>");
      out.print("<th>Ponto de Refer&ecirc;cia</th>");
      out.print("<th>Titular &eacute; recebedor</th>");
      out.print("<th>Nome do Recebedor</th>");
      out.print("<th>Sobrenome do Recebedor</th>");
      out.print("<th>Endere&ccedil;o de Cobran&ccedil;a</th>");
    out.print("</tr>");

    while(dados.next())
    {
      out.print("<tr>");
        out.print("<td>");
          out.print(dados.getString("codigo"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("titulo"));  
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("tipo"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("cep"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("endereco"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("numero"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("snumero"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("complemento"));
        out.print("</td>");

        out.print("<td>");
          out.print(dados.getString("bairro"));
        out.print("</td>");  
        
        out.print("<td>");
          out.print(dados.getString("cidade_estado"));
        out.print("</td>");  

        out.print("<td>");
          out.print(dados.getString("ponto_ref"));
        out.print("</td>");  

        out.print("<td>");
          out.print(dados.getString("titular_recebedor"));
        out.print("</td>");  

        out.print("<td>");
          out.print(dados.getString("nome_recebedor"));
        out.print("</td>");  

        out.print("<td>");
          out.print(dados.getString("sobrenome_recebedor"));
        out.print("</td>");  

        out.print("<td>");
          out.print(dados.getString("endereco_cobranca"));
        out.print("</td>");  
      out.print("</tr>");
    }
    out.print("</table>");

    out.print("</div>");
  %>
  
</body>
</html>