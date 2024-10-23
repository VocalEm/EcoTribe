<%-- 
    Document   : Register
    Created on : Oct 7, 2024, 11:19:45 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/RegisterStyle4.css"> <!-- Vincula tu CSS aquí -->

    <!-- CDN para Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
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
    <!--Fin-->

    <!--Inicio de banners-->
    <section class="banner" id="banner"></section>
    <!--Fin de banners-->
  
<div class="box">
    <form id="Register-form" method="POST" action="RegistroServlet">
        <h3>Nueva Cuenta</h3> 

        <div class="inputBox">
            <input type="text" id="nombre" name="nombre" placeholder="Nombre(s)" required>
        </div>

        <div class="inputBox">
            <input type="text" id="apellido-paterno" name="apellido_pat" placeholder="Apellido Paterno" required>
        </div>

        <div class="inputBox">
            <input type="text" id="apellido-materno" name="apellido_mat" placeholder="Apellido Materno" required>
        </div>

        <div class="inputBox">
            <input type="text" id="username" name="username" placeholder="Username" required>
        </div>

        <div class="inputBox">
            <input type="email" id="email" name="email" placeholder="Email" required>
        </div>

        <div class="inputBox">
            <input type="date" id="birthday" name="fecha_nac" placeholder="Fecha de Nacimiento" required>
        </div>

        <div class="inputBox">
            <input type="password" id="create-password" name="password" placeholder="Create Password" required>
        </div>

        <div class="inputBox">
            <input type="password" id="confirm-password" name="password_confirm" placeholder="Confirm Password" required>
        </div>

        <div class="inputBox" style="text-align: center;">
            <input type="submit" value="Create" style="display: block; margin: 0 auto;">
        </div>
        <div  class="error" id="errores">
             <c:if test="${not empty errorMessage}">
                <p style="color: red;">${errorMessage}</p>
            </c:if>
        </div>

        <p>Ya tengo cuenta <a href="login.jsp">Login</a></p>
    </form>
</div>
    <script src="Register.js">
        
    </script>
    
</body>
</html>