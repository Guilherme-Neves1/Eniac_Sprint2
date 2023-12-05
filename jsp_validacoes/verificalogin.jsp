<%@page language="java" import="java.sql.*" %>
<%
    //Variaveis que armazena informações digitadas pelo usuário
    String vlogin = request.getParameter("email") ;
    String vsenha = request.getParameter("senha") ;

    //variaveis para o banco de dados
    String nomeBanco = "projeto_web";
    String enderecoBanco = "jdbc:mysql://localhost:3306/"+nomeBanco;
    String usuarioBanco = "root";
    String senhaUsuarioBanco = "";

    //Variavel para o Driver
    String driver = "com.mysql.jdbc.Driver" ;

    //Carregar o driver na memória
    Class.forName( driver ) ;

    //Cria a variavel para conectar com o banco de dados
    Connection conexao ;

    //Abrir a conexao com o banco de dados
    conexao = DriverManager.getConnection(email, nome, senha);

    String sql = "SELECT * FROM usuario WHERE login = ? and senha: ? ";

    //Cria o statement para executar o comando no banco
    PreparedStatement stm = conexao.prepareStatement(sql) ;

    stm.setString(1, vlogin);
    stm.setString(2, vsenha);

    ResultSet  dados = stm.executeQuery() ;

    if ( dados.next()) {
        //cria a session chamada usuario
        session.setAttribute("usuario" , dados.getString("nome") ) ;
        response.sendRedirect("final.html") ;
    }else{
        out.print("Login incorreto") ;
        out.print("<br><br>") ;
        out.print("<a href='oboti_valid_login.html'>Login</a>") ;
    }


%>

