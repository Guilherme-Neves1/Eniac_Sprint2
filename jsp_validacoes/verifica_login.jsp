<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Endere&ccedil;o Adicionado | O Boticário</title>
  <link rel="stylesheet" href="../estilos/padrao_todas_pags/main.css">
  <link rel="stylesheet" href="../estilos/padrao_todas_pags/cabecalho.css">
  <link rel="stylesheet" href="../estilos/padrao_todas_pags/rodape.css">
  <link rel="stylesheet" href="../estilos/jsp.css">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;700&family=Noto+Sans+Mandaic&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

</head>
<body>
<!----------------------CABEÇALHO---------------------->
<div class="header">
  <div class="headerLeft">
    <a href="../index.html" style="text-decoration: none; display: flex; align-items: center;">
      <div class="logo">
        <img src="../imagens/icons/logo-oboticario-marca.png" alt="Logo da oBoticário" id="oLogo">
      </div>
      
      <h1>
        oBotic&aacute;rio
      </h1>
    </a>
  </div>

  <div class="headerMiddle">
    <input type="text" required placeholder="Aproveite as melhores ofertas">
    <img src="../imagens/icons/icon-search.png" alt="search">
  </div>

  <div class="headerRight">
    <div class="dropdown">
      <img src="imagens/icons/icon-menu.png" class="menu-icon">

      <div class="dropdown-menu">
        <a href="index.html" style="border-top: 1px solid rgba(0, 0, 0, 0.15); border-bottom: 1px solid rgba(0, 0, 0, 0.15);">Início</a>
        <a href="pags_principais_html/pag_lancamentos.html" style="border-bottom: 1px solid rgba(0, 0, 0, 0.15);">Lançamentos</a>
        <a href="pags_principais_html/pag_produtos.html" style="border-bottom: 1px solid rgba(0, 0, 0, 0.15);">Produtos</a>
        <a href="pags_principais_html/pag_promocoes.html" style="border-bottom: 1px solid rgba(0, 0, 0, 0.15);">Promoções</a>
        <a href="pags_principais_html/pag_dicas.html">Dicas</a>

      </div>
    </div>
    <img src="../imagens/icons/profile-icon.png" alt="profile">
    <img src="../imagens/icons/icon-heart.png" alt="heart">
    <img src="../imagens/icons/icon-market-car.png" alt="market-car">
  </div>
</div>

<div class="headerBar">
  <a href="../index.html" style="text-decoration: none;">
    <h1>IN&iacute;CIO</h1>
  </a>
  <a href="../pags_principais_html/pag_lancamentos.html" style="text-decoration: none;">
    <h1>LAN&Ccedil;AMENTOS</h1>
  </a>
  <a href="../pags_principais_html/pag_produtos.html" style="text-decoration: none;">
    <h1>PRODUTOS</h1>
  </a>
  <a href="../pags_principais_html/pag_promocoes.html" style="text-decoration: none;">
    <h1>PROMO&Ccedil;&Otilde;ES</h1>
  </a>
  <a href="../pags_principais_html/pag_dicas.html" style="text-decoration: none;">
    <h1>DICAS</h1>
  </a>
</div>

<%@page language="java" import="java.sql.*" %>
<%
  // Variáveis que armazenam os valores digitados pelo usuário
  String vemail = request.getParameter("email");
  String vsenha = request.getParameter("senha");

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
  String sql = "SELECT * FROM usuario_cadastro WHERE email=? AND senha=?";

  // Criar o statement para executar o comando no Banco
  PreparedStatement stm = conexao.prepareStatement(sql);

  stm.setString(1, vemail);
  stm.setString(2, vsenha);

  // Criar uma variável para receber os dados
  // TIPO VARIÁVEL = stm.executeQuery();
  ResultSet dados = stm.executeQuery();

  if (dados.next()) {
    // Cria a sessão chamada usuario
    session.setAttribute("usuario", dados.getString("nome"));
    response.sendRedirect("../pags_valid_html/valid_endereco.html");

  }else{
    out.print("<br><br><br><br><br><br><br><br>");
    out.print("<br><br><br><br><br><br><br><br>");
    out.print("<h1 class='finCad' style='font-size: 30px;'>Email ou senha incorretos!</h1>");
    out.print("<h1 class='finCad' style='font-size: 20px;'>Tente novamente ou crie uma nova conta.</h1>");
    out.print("<br><br>");
    out.print("<a href='../pags_valid_html/valid_login.html'> <button> Tentar novamente </button> </a>");
    out.print("<br><br><br><br><br><br><br><br>");
    out.print("<br><br><br><br><br><br><br><br>");
  }
%>

  <!--------------------------- RODAPÉ ----------------------->
  <div id="rodape">
    <div class="pagSeg">
      <div id="meiosPagamento">
        <div class="txtPag">
          <p class="rodapeTexto">Meios de Pagamento</p>
        </div>

        <div class="imgPag">
          <img class="bandeira" src="../imagens/meios_pagamento/flag-visa.svg" alt="visa">
          <img class="bandeira" src="../imagens/meios_pagamento/flag-master.svg" alt="master">
          <img class="bandeira" src="../imagens/meios_pagamento/flag-amex.svg" alt="amex">
          <img class="bandeira" src="../imagens/meios_pagamento/flag-elo.svg" alt="elo">
          <img class="bandeira" src="../imagens/meios_pagamento/flag-diners.svg" alt="diners">
          <img class="bandeira" src="../imagens/meios_pagamento/flag-hipercard.svg" alt="hiper">
          <img class="bandeira" src="../imagens/meios_pagamento/flag-boleto.svg" alt="boleto">
          <img class="pix" src="../imagens/meios_pagamento/flag-pix.svg" alt="pix">
        </div>
      </div>

      <div id="segurancaPagamento">
        <div class="txtSeg">
          <p class="rodapeTexto">Seguran&ccedil;a</p>
        </div>

        <div class="imgSeg">
          <img class="segurancaBandeira" src="../imagens/seguranca/security-100.svg" alt="secCem">
          <img class="segurancaBandeira" src="../imagens/seguranca/security-google-icon.svg" alt="secGoogle">
          <img class="segurancaBandeira" src="../imagens/seguranca/security-geotrust.svg" alt="secGeotrust">
        </div>
      </div>
    </div>

    <div class="obotiCopy">
      <p class="rodapeTexto"> &#169; 2007-2023 O Botic&aacute;rio</p>
    </div>
  </div>
</body>
</html>