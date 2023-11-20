<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP - Login</title>
</head>
<body>
  <% 
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");

    out.println(email);
    out.println(senha);
  %>
</body>
</html>