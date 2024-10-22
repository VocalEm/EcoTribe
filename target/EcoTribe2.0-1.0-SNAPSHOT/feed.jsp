<%-- 
    Document   : feed
    Created on : Oct 7, 2024, 11:19:22 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- mi css -->
    <link rel="stylesheet" href="css/feed.css" />
    <!-- cdn -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
    />
    <title>feed</title>
  </head>
  
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
      <div class="grid-container">
        <aside class="feed-sidebar">
          <!-- Caja: Lo más buscado -->
          <div class="box">
            <h3 class="title">Lo más buscado</h3>
            <div class="category">
              <a href="#">Cuidado <span>42</span></a>
              <a href="#">Flores <span>52</span></a>
              <a href="#">Plantar <span>29</span></a>
              <a href="#">Crecimiento <span>72</span></a>
              <a href="#">Trucos <span>63</span></a>
              <a href="#">Exóticas <span>42</span></a>
              <a href="#">Cactus <span>49</span></a>
              <a href="#">Hongos <span>21</span></a>
              <a href="#">Riego <span>14</span></a>
            </div>
          </div>
        
          <!-- Caja: Usuarios Destacados -->
          <div class="box">
            <h3 class="title">Usuarios Destacados</h3>
            <div class="p-post">
              <a href="#">
                <img src="Imagenes/Emi.jpg" alt="Emiliano Frias" class="profile-pic">
                <div class="text-container">
                  <h3>Emiliano Frias</h3>
                  <span><i class="far fa-clock"></i>5 de junio, 2024</span>
                </div>
              </a>
              <a href="#">
                <img src="Imagenes/Mercy.jpg" alt="Mercy Thomas" class="profile-pic">
                <div class="text-container">
                  <h3>Mercy Thomas</h3>
                  <span><i class="far fa-clock"></i>15 de mayo, 2024</span>
                </div>
              </a>
              <a href="#">
                <img src="Imagenes/Gress.jpg" alt="Gracia Marlene" class="profile-pic">
                <div class="text-container">
                  <h3>Gracia Marlene</h3>
                  <span><i class="far fa-clock"></i>9 de febrero, 2024</span>
                </div>
              </a>
              <a href="#">
                <img src="Imagenes/Sebas.jpg" alt="Sebastian Montoya" class="profile-pic">
                <div class="text-container">
                  <h3>Sebastian Montoya</h3>
                  <span><i class="far fa-clock"></i>16 de enero, 2024</span>
                </div>
              </a>
              <a href="#">
                <img src="Imagenes/kiwi.jpg" alt="Ximena Kiwi" class="profile-pic">
                <div class="text-container">
                  <h3>Ximena Kiwi</h3>
                  <span><i class="far fa-clock"></i>16 de enero, 2024</span>
                </div>
              </a>
              <a href="#">
                <img src="Imagenes/Ana.png" alt="Ana Pao" class="profile-pic">
                <div class="text-container">
                  <h3>Ana Paola</h3>
                  <span><i class="far fa-clock"></i>16 de enero, 2024</span>
                </div>
              </a>
              <a href="#">
                <img src="Imagenes/Raziel.jpg" alt="Raziel Leal" class="profile-pic">
                <div class="text-container">
                  <h3>Raziel Kiwi</h3>
                  <span><i class="far fa-clock"></i>16 de enero, 2024</span>
                </div>
              </a>
              <a href="#">
                <img src="Imagenes/Samu.jpg" alt="Samuel Quintero" class="profile-pic">
                <div class="text-container">
                  <h3>Samuel Quintero</h3>
                  <span><i class="far fa-clock"></i>16 de enero, 2024</span>
                </div>
              </a>
              <a href="#">
                <img src="Imagenes/Monse.png" alt="Monse Carranza" class="profile-pic">
                <div class="text-container">
                  <h3>Monse Carranza</h3>
                  <span><i class="far fa-clock"></i>16 de enero, 2024</span>
                </div>
              </a>
            </div>
          </div>
        
          <!-- Caja: Post Populares -->
          <div class="box">
            <h3 class="title">Post Populares</h3>
            <div class="p-post">
              <a href="#">
                <h3>01. Crea tu jardín</h3>
                <span><i class="far fa-clock"></i>5 de junio, 2024</span>
              </a>
              <a href="#">
                <h3>02. Planta mágicas flores</h3>
                <span><i class="far fa-clock"></i>15 de mayo, 2024</span>
              </a>
              <a href="#">
                <h3>03. Hongos fascinantes</h3>
                <span><i class="far fa-clock"></i>9 de febrero, 2024</span>
              </a>
              <a href="#">
                <h3>04. Cómo empezar</h3>
                <span><i class="far fa-clock"></i>16 de enero, 2024</span>
              </a>
            </div>
          </div>
        </aside>



        
        <div class="post-cointainer">
          <div class="post">
            <img src="Imagenes/blog1.png" alt="" class="image" />
            <div class="date">
              <i class="far fa-clock"></i>
              <span>${publicacion.fecha_creacion}</span>
            </div>
            <a href="Imagenes/Publi.html" class="title-link">
              <h3 class="title">${publicacion.titulo}</h3>
            </a>
            <p class="text">
             ${publicacion.descripcion}
            </p>
            <div class="links">
              <a href="#" class="user">
                <i class="far fa-user"></i>
                <span>by ${usuario.username}</span>
              </a>
              <a href="#" class="icon">
                <i class="far fa-comment"></i>
                <span>${comentario.conteo}</span>
              </a>
              <a href="#" class="icon">
                <i class="fa-regular fa-thumbs-up"></i>
                <span>${reacciones.likes}</span>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="paginacion">
        <div>
          <a href="">1</a>
        </div>
        <div>
          <a href="">2</a>
        </div>
        <div>
          <a href="">3</a>
        </div>
        <div>
          <a href="">...</a>
        </div>
      </div>
    </section>
    <!--Final de Post-->
    <!-- Nueva Publicacion -->
    <section class="n-publicacion" id="n-publicacion">
      <form action="">
        <h3>Nueva Publicacion</h3>
        <div class="inputBox">
          <input type="text" class="titulo" placeholder="Titulo" />
          <input type="text" class="categoria" placeholder="Categoria" />
        </div>
        <div class="inputBox">
          <input type="text" class="subtitulo" placeholder="Subtitulo" />
          <input type="text" class="etiqueta" placeholder="Etiqueta" />
        </div>
        <textarea
          name=""
          placeholder="Mensaje"
          id=""
          cols="30"
          rows="10"
        ></textarea>
        <input type="submit" value="Publicar" class="btn" />
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
  
</html>
