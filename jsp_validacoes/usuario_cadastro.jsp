<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cadastro Finalizado | O Boticário</title>
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
   //verifica se a session chamada usuario existe
   if (  session.getAttribute("usuario") == null ) {

        out.print("Conteudo restrito. Faça o login") ;
        out.print("<br><br>") ;
        out.print("<a href='oboti_valid_login.html'>Login</a>") ;
   }
   else
   {
    <!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | O Boticário</title>

    <!--------------------- ICON TITLE -------------------->
    <link rel="icon" type="png" href=https://github.com/Guilherme-Neves1/Site-oBoticario/blob/main/_imagens/icone.JPG?raw=true>

    <!--------------------- CSS -------------------->
    <link rel="stylesheet" href="estilos/main.css">
    <link rel="stylesheet" href="estilos/rodape.css">
    <link rel="stylesheet" href="estilos/login.css">

    <!--------------------- FONTES -------------------->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;700&family=Noto+Sans+Mandaic&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

  </head>
  <body>

    <div class="conteudo">
      <div class="txtConteudo">
        <h1>oBoticário</h1>
        <h2>Faça login em sua conta</h2> 
      </div>
      <div class="boxLogin">
        <div class="txtBoxCima">
          <p class="cimaUm">Olá!</p>
          <p class="cimaDois">Para continuar, digite seu e-mail e senha</p>
        </div>
        
        <form class="formLogin" action="endereco_cad.html">
          <div class="boxLoginEmail">
            <div class="inputBox">
              <input type="text" name="email" required maxlength="50">
              <span>Email:</span>
            </div>

            <div class="boxLoginEmailTxt">
              <span class="txtLoginEmail">
                <p>
                  <a href="oboti_valid_cadast.html">Criar conta</a>
                </p>
              </span>
            </div>
          </div>

          <div class="boxLoginEmail">
            <div class="inputBox">
              <input type="password" name="senha" required minlength="6">
              <span>Senha:</span>
            </div>

            <div class="boxLoginEmailTxt">
              <span class="txtLoginEmail">
                <p>Esqueci minha senha</p>
              </span>
            </div>
          </div>

          <div>
            <button class="continueButton">Continuar</button>
          </div>

          <div class="otherOption">
            <span>
              <p>ou utilize sua conta</p>
            </span>
          </div>

          <div class="sectionGoogle">
            <img src="imagens/icons/icon-google.png" alt="googleIcon">
            <button class="googleButton">Google</button>
          </div>

          <div class="captcha">
            <p>Protegido por reCAPTCHA - Privacidade | Condições</p>
          </div>
        </form>
      </div>
    </div>

<!------------------------------RODAPÉ------------------------------------>
    <div id="rodape">
      <div class="pagSeg">
        <div id="meiosPagamento">
          <div class="txtPag">
            <p class="rodapeTexto">Meios de Pagamento</p>
          </div>

          <div class="imgPag">
            <img class="bandeira" src="imagens/meios_pagamento/flag-visa.svg" alt="visa">
            <img class="bandeira" src="imagens/meios_pagamento/flag-master.svg" alt="master">
            <img class="bandeira" src="imagens/meios_pagamento/flag-amex.svg" alt="amex">
            <img class="bandeira" src="imagens/meios_pagamento/flag-elo.svg" alt="elo">
            <img class="bandeira" src="imagens/meios_pagamento/flag-diners.svg" alt="diners">
            <img class="bandeira" src="imagens/meios_pagamento/flag-hipercard.svg" alt="hiper">
            <img class="bandeira" src="imagens/meios_pagamento/flag-boleto.svg" alt="boleto">
            <img class="pix" src="imagens/meios_pagamento/flag-pix.svg" alt="pix">
          </div>
        </div>

        <div id="segurancaPagamento">
          <div class="txtSeg">
            <p class="rodapeTexto">Segurança</p>
          </div>

          <div class="imgSeg">
            <img class="segurancaBandeira" src="imagens/seguranca/security-100.svg" alt="secCem">
            <img class="segurancaBandeira" src="imagens/seguranca/security-google-icon.svg" alt="secGoogle">
            <img class="segurancaBandeira" src="imagens/seguranca/security-geotrust.svg" alt="secGeotrust">
          </div>
        </div>
      </div>

      <div class="obotiCopy">
        <p class="rodapeTexto"> &#169; 2007-2023 O Boticário</p>
      </div>
    </div>
  </body>
</html>
<%
}
%>
%>
  <% 
  /* Variáveis com informações difitadas pelo usuário, com print na tela JSP */
    String email = request.getParameter("email");
    String nome = request.getParameter("nome");
    String sobrenome = request.getParameter("sobrenome");
    String cpf = request.getParameter("cpf");
    String data_nasc = request.getParameter("data_nasc");
    String celular = request.getParameter("celular");
    String senha = request.getParameter("senha");
    String genero = request.getParameter("genero");

    /*
    out.println(email+"<br>"+"<br>");
    out.println(nome+"<br>"+"<br>");
    out.println(sobrenome+"<br>"+"<br>");
    out.println(cpf+"<br>"+"<br>");
    out.println(data_nasc+"<br>"+"<br>");
    out.println(celular+"<br>"+"<br>");
    out.println(senha+"<br>"+"<br>");
    out.println(genero+"<br>"+"<br>");
    */
  
   // Variáveis para o Banco de Dados
   // String nomeBanco
   // String enderecoBanco
   // String usuarioBanco
   // String senhaUsuarioBanco

  String nomeBanco = "projeto_web";
  String enderecoBanco = "jdbc:mysql://localhost:3306/"+nomeBanco;
  String usuarioBanco = "root";
  String senhaUsuarioBanco = "";

  // Variável para o Driver => padrão de comunicação entre JSP e o Banco de Dados
  // Baixar o driver mysql-connector-java e colocar no caminho: C:\xampp\tomcat\lib 
  // Abrir o arquivo connector com o WinRar e ver o caminho do driver
  // "com.mysql.jdbc.Driver"
  // Adiconar a variável String driver = "com.mysql.jdbc.Driver"

  String driver = "com.mysql.jdbc.Driver";

  // Carregar o driver na memória
  // Usar o comando Class.forName(driver);
  Class.forName(driver);

  // Criar a variável para conectar com o Banco de Dados
  // Ela veio junto com o import
  // Connection nomeVariavel;
  Connection conexao;

  // Abrir a conexão com o Banco de Dados
  conexao = DriverManager.getConnection(enderecoBanco, usuarioBanco, senhaUsuarioBanco);

  // Criar a variável sql como comando INSERT
  String sql = "INSERT INTO usuario_cadastro (email, nome, sobrenome, cpf, data_nasc, celular, senha, genero) values (?, ?, ?, ?, ?, ?, ?, ?)";

  // Preparar o INSERT no MySQL, com um comando para substituir as interrogações
	// stm é a variável7
  // os números são as interregações em sequência
  PreparedStatement stm = conexao.prepareStatement(sql);

  stm.setString(1, email);
  stm.setString(2, nome);
  stm.setString(3, sobrenome);
  stm.setString(4, cpf);
  stm.setString(5, data_nasc);
  stm.setString(6, celular);
  stm.setString(7, senha);
  stm.setString(8, genero);

  stm.execute();
  stm.close();

  out.print("<br><br><br><br><br><br><br><br>");
  out.print("<br><br><br><br><br><br><br><br>");
  out.print("<h1 class='finCad'>Seu cadastro foi realizado com sucesso!</h1>");
  out.print("<br><br>");
  out.print("<a href='../pags_valid_html/valid_endereco.html'> <button> Adicione o endere&ccedil;o de entrega </button> </a>");
  out.print("<br><br><br><br><br><br><br><br>");
  out.print("<br><br><br><br><br><br><br><br>");

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