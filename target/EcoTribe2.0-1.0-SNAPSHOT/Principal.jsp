 q<%-- 
    Document   : Principal
    Created on : Oct 7, 2024, 11:20:50 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- mi css -->
    <link rel="stylesheet" href="css/StylePrincipal3.css" />
    <!-- cdn -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
    />
    <title>Principal</title>
  </head>
  <body>
    <!--Inicio-->
    <header class="header">
      <a href="#" class="logo"><span>Eco</span>Tribe</a>

      <nav class="navbar">
        <a href="feed.jsp">Inicio</a>
        <a href="Principal.jsp">Sobre Mi</a>
        <a href="#" id="publish-icon">Publicar</a>
      </nav>

      <div class="icons">
        <i class="fas fa-bars" id="menu-bars"></i>
        <i class="fas fa-search" id="search-icon"></i>
      </div>

      <form action="" class="search-form">
        <input type="search" placeholder="buscar..." id="search-box" />
        <label for="search-box" class="fas fa-search"></label>
      </form>
    </header>
    <!--FInal-->

    <!--inicio de banners-->

  

    <!--FInal de banners-->

    <!--Inicio de Post-->
    <section class="container" id="post">
      <div class="post-cointainer">
        <div class="post">
          <img src="Imagenes/blog1.png" alt="" class="image" />
          <div class="date">
            <i class="far fa-clock"></i>
            <span>1 mayo, 2024</span>
          </div>
          <a href="publi.jsp" class="title-link">
            <h3 class="title">Cuidado de plantas</h3>
          </a>
          <p class="text">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Qui ipsa
            dolore fugit voluptatibus non dolorem, enim provident voluptate,
            impedit ipsum repellendus sit repudiandae labore deleniti. Minima
            non est aut a nobis cum, rem sed, deserunt, nostrum cupiditate
            consectetur. Quos ducimus eius obcaecati nesciunt reprehenderit et,
            possimus asperiores accusantium quo maxime.
          </p>
          <p class="text">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia
            numquam sed nisi minima ea aliquam perspiciatis ipsa et doloremque.
            Placeat nisi distinctio explicabo enim quibusdam obcaecati
            reprehenderit velit, cum a?
          </p>
          <div class="links">
            <a href="#" class="user">
              <i class="far fa-user"></i>
              <span>by Emiliano</span>
            </a>
            <a href="#" class="icon">
              <i class="far fa-comment"></i>
              <span>(45)</span>
            </a>
            <a href="#" class="icon">
              <i class="fa-regular fa-thumbs-up"></i>
              <span>(29)</span>
            </a>
          </div>
        </div>

        <div class="post">
          <img src="Imagenes/blog2.png" alt="" class="image" />
          <div class="date">
            <i class="far fa-clock"></i>
            <span>1 mayo, 2024</span>
          </div>
          <h3 class="title">Plantas extrañas</h3>
          <p class="text">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Qui ipsa
            dolore fugit voluptatibus non dolorem, enim provident voluptate,
            impedit ipsum repellendus sit repudiandae labore deleniti. Minima
            non est aut a nobis cum, rem sed, deserunt, nostrum cupiditate
            consectetur. Quos ducimus eius obcaecati nesciunt reprehenderit et,
            possimus asperiores accusantium quo maxime.
          </p>
          <p class="text">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia
            numquam sed nisi minima ea aliquam perspiciatis ipsa et doloremque.
            Placeat nisi distinctio explicabo enim quibusdam obcaecati
            reprehenderit velit, cum a?
          </p>
          <div class="links">
            <a href="#" class="user">
              <i class="far fa-user"></i>
              <span>by Emiliano Frias</span>
            </a>
            <a href="#" class="icon">
              <i class="far fa-comment"></i>
              <span>(45)</span>
            </a>
            <a href="#" class="icon">
              <i class="fa-regular fa-thumbs-up"></i>
              <span>(29)</span>
            </a>
          </div>
        </div>

        <div class="post">
          <img src="Imagenes/blog3.jpg" alt="" class="image" />
          <div class="date">
            <i class="far fa-clock"></i>
            <span>1 mayo, 2024</span>
          </div>
          <h3 class="title">Plantalo tu mismo</h3>
          <p class="text">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Qui ipsa
            dolore fugit voluptatibus non dolorem, enim provident voluptate,
            impedit ipsum repellendus sit repudiandae labore deleniti. Minima
            non est aut a nobis cum, rem sed, deserunt, nostrum cupiditate
            consectetur. Quos ducimus eius obcaecati nesciunt reprehenderit et,
            possimus asperiores accusantium quo maxime.
          </p>
          <p class="text">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia
            numquam sed nisi minima ea aliquam perspiciatis ipsa et doloremque.
            Placeat nisi distinctio explicabo enim quibusdam obcaecati
            reprehenderit velit, cum a?
          </p>
          <div class="links">
            <a href="#" class="user">
              <i class="far fa-user"></i>
              <span>by Emiliano Frias</span>
            </a>
            <a href="#" class="icon">
              <i class="far fa-comment"></i>
              <span>(45)</span>
            </a>
            <a href="#" class="icon">
              <i class="fa-regular fa-thumbs-up"></i>
              <span>(29)</span>
            </a>
          </div>
        </div>
      </div>

      <div class="sidebar">
        <div class="box">
          <h3 class="title">Sobre Mi</h3>
          <div class="about">
            <img src="Imagenes/Emi.jpg" alt="" />
            <h3>Emiliano Frias</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero
              possimus sit deleniti fugit optio alias reiciendis harum, est
              quasi natus quidem beatae obcaecati assumenda libero dolorum autem
              blanditiis, iure perferendis!
            </p>
            <div class="follow">
              <a href="#" class="fab fa-facebook-f"></a>
              <a href="#" class="fab fa-twitter"></a>
              <a href="#" class="fab fa-instagram"></a>
              <a href="#" class="fab fa-linkedin"></a>
            </div>
          </div>
        </div>
        <div class="box">
          <h3 class="title">Categorias</h3>
          <div class="category">
            <a href="#">Cuidado <span>42</span></a>
            <a href="#">Flores <span>52</span></a>
            <a href="#">Plantar <span>29</span></a>
            <a href="#">Crecimiento <span>72</span></a>
            <a href="#">Trucos <span>63</span></a>
            <a href="#">Exoticas <span>42</span></a>
            <a href="#">Cactus <span>49</span></a>
            <a href="#">Hongos <span>21</span></a>
            <a href="#">Riego<span>14</span></a>
          </div>
        </div>

        <div class="box">
          <h3 class="title">Post Populares</h3>
          <div class="p-post">
            <a href="#">
              <h3>01. Crea tu jardin</h3>
              <span><i class="far fa-clock"></i>5 de junio, 2024</span>
            </a>
            <a href="#">
              <h3>02. Planta magicas flores</h3>
              <span><i class="far fa-clock"></i>15 de mayo, 2024</span>
            </a>
            <a href="#">
              <h3>03. Hongos fascinantes</h3>
              <span><i class="far fa-clock"></i>9 de febrero, 2024</span>
            </a>
            <a href="#">
              <h3>04. Como empezar</h3>
              <span><i class="far fa-clock"></i>16 de enero, 2024</span>
            </a>
          </div>
        </div>
      </div>
    </section>
    <!--Final de Post-->
    <!-- Nueva Publicacion -->
<section class="n-publicacion" id="n-publicacion">
    <form action="">
        <h3>Nueva Publicacion</h3>
        <div class="inputBox">
            <input type="text" class="titulo" placeholder="Titulo">
            <!-- List box para categorías -->
            <select class="categoria">
                <option value="" disabled selected>Elige una categoría</option>
                <option value="Cuidado">Cuidado</option>
                <option value="Flores">Flores</option>
                <option value="Plantar">Plantar</option>
                <option value="Exóticas">Exóticas</option>
                <option value="Cactus">Cactus</option>
            </select>
        </div>
        <!-- Campo para subir una imagen -->
        <div class="inputBox">
            
            <input type="file" id="imagen" class="imagen" accept="image/*">
        </div>
        <textarea name="" placeholder="Mensaje" id="" cols="30" rows="10"></textarea>
        <input type="submit" value="Publicar" class="btn">
    </form>
</section>
<!-- Final Nueva Publicacion -->

    <!-- Inicio Pie de Pagina -->

    <section class="footer">
      <div class="follow">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
      </div>
      <div class="credit">
        Alumnos: <span>Emiliano Frias Felix y Jordi Alexis Saldaña</span> | all
        rights reserved
      </div>
    </section>

    <!-- Final Pie de Pagina -->

    <!-- js  -->
    <script src="PrincipalScript.js"></script>
  </body>
</html>
