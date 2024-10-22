<%-- 
    Document   : login
    Created on : Oct 7, 2024, 11:19:11 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/sytleLog2.css" />
    <!-- Vincula tu CSS aquí -->

    <!-- cdn -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
    />
  </head>
  <body>
    <!--Inicio-->
    <header class="header">
      <a href="#" class="logo"><span>Eco</span>Tribe</a>

      <nav class="navbar">
        <a href="#banner">Inicio</a>
        <a href="#post">Registrarme</a>
        <a href="#contact">Ayuda</a>
      </nav>

      <div class="icons">
        <i class="fas fa-bars" id="menu-bars"></i>
      </div>
    </header>
    <!--FInal-->

    <!--inicio de banners-->

    <section class="banner" id="banner"></section>

    <!--FInal de banners-->

    <div class="box">
        <form id="login-form" method="POST" action="LoginServlet">
        <h3>Sign In</h3>
        <input type="text" placeholder="Username" name="correo" required />
        <input
          type="password"
          placeholder="Password"
          name="password"
          required
        />
        <input type="submit" value="Login" />

        <div class="group">
          <a href="#">Forget Password</a>
          <a href="Register.jsp">Sign up</a>
        </div>
      </form>
    </div>

    <script>
      document
        .getElementById("login-form")
        .addEventListener("submit", function (event) {

          // Aquí puedes realizar la validación o cualquier otra lógica necesaria

          // Redirige al usuario a otra página
        });
    </script>
  </body>
</html>
