<%-- 
    Document   : publi
    Created on : Oct 7, 2024, 11:20:00 AM
    Author     : Lenovo
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- mi css -->
    <link rel="stylesheet" href="css/Publistyle3.css">
    <!-- cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <title>Principal</title>
</head>
<body>
    
    <!--Inicio-->
    <header class="header">

        <a href="#" class="logo"><span>Eco</span>Tribe</a>

        <nav class="navbar">
            <a href="feed.jsp">Principal</a>
            <a href="Principal.jsp">Perfil</a>
        </nav>

        <div class="icons">
            <i class="fas fa-bars" id="menu-bars"></i>
            <i class="fas fa-search" id="search-icon"></i>
        </div>

        <form action="" class="search-form">
            <input type="search" placeholder="buscar..." id="search-box">
            <label for="search-box" class="fas fa-search"></label>
        </form>
    </header>
    <!--FInal-->

    <!--inicio de banners-->

    <section class="banner" id="banner">
        <h1>Publicacione</h1>
    </section>

    <!--FInal de banners-->


<!--Inicio de Post-->
    	<section class="container" id="post">

            <div class="post-principal">
                
                <h1 class="post-tittle">Titulo del Post</h1>

                <div class="post-content">

                    <img src="Imagenes/planta-mascota-gato-falta-tiempo-mejores-opciones-interior-50.jpg" class="post-image"> <!-- Imagen agregada -->

                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, rerum aperiam. A voluptatum optio assumenda?</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi delectus mollitia aperiam neque quibusdam, ea, voluptatum ratione excepturi culpa sit dicta asperiores adipisci quo molestiae? Fugiat recusandae qui ex expedita repellendus alias odio dolorum perferendis ullam unde culpa quam, nesciunt tenetur corrupti excepturi, placeat omnis eveniet delectus eum! Dolorem, dignissimos.</p>
                    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Perspiciatis error id mollitia! Deserunt nulla, sunt repudiandae iste mollitia nam molestiae fugiat dolorem, a odit, vero obcaecati ad provident dignissimos corrupti!</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto quia nobis officiis velit at nostrum commodi cupiditate, voluptas aliquid odit est similique, accusantium placeat inventore vel. Eos velit qui dolore nobis labore, debitis corrupti voluptatum, quia sit saepe doloremque nihil sunt voluptates recusandae iusto repellat, dolorem harum suscipit adipisci dolor.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, enim quo eius possimus natus iusto similique minus accusantium nobis doloribus? Quo dignissimos quis libero! Nihil non consequatur perspiciatis corporis placeat ipsa cum, nesciunt assumenda iure officia autem veritatis alias, temporibus ab deserunt minus! Ex nesciunt laborum laudantium nostrum accusantium aliquam porro reiciendis nemo ipsa tenetur quidem, ipsum enim alias illum rem eveniet quisquam corrupti iusto sint tempore consequatur perferendis blanditiis! Deserunt eveniet quae, dignissimos nulla porro a dolor aliquid facere. Inventore tempora et corporis laboriosam odio soluta modi, architecto optio, praesentium minima, labore quos? Omnis deserunt natus aperiam asperiores a.</p>
                    
                     <!-- Contenedor para los botones -->
                          <div class="like-dislike-container">
                             <button class="like-btn"><i class="fas fa-thumbs-up"></i> Like</button>
                             <button class="dislike-btn"><i class="fas fa-thumbs-down"></i> Dislike</button>
                            </div>
                    
                    
                </div>

            </div>
            
            <div class="sidebar">

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
<!-- Comentarios -->

<section class="n-Comentario" id="n-Comentario">
    <div class="comment-section" id="comment-section">
        <h3>Comentarios</h3>
        <!-- Los comentarios se agregarán aquí dinámicamente -->
    </div>

    <!-- Comentario 1 -->
    <div class="comment">
        <img src="Imagenes/Emi.jpg" alt="user1" class="user-image">
        <div class="comment-content">
            <p><strong>Usuario 1:</strong> Este es un comentario de prueba. ¡Gran post!</p>
            
            <!-- Botones Like y Dislike para el comentario -->
             <!-- Contenedor para los botones -->
             <div class="like-dislike-container">
                  <button class="like-btn"><i class="fas fa-thumbs-up"></i> Like</button>
                 <button class="dislike-btn"><i class="fas fa-thumbs-down"></i> Dislike</button>
             </div>
            
            
        </div>
    </div>

    <section class="n-Comentario" id="n-Comentario">
        <form id="comment-form">
            <h3>Dejar Comentario</h3>
            <div class="inputBox">
                <textarea id="comment-message" placeholder="Escribe tu comentario..." cols="30" rows="5" required></textarea>
            </div>
            <input type="submit" value="Publicar" class="btn">
        </form>
    </section>
</section>
<!-- Final Comentarios -->


<!-- Inicio Pie de Pagina -->
<section class="footer">
    <div class="follow">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
    </div>
    <div class="credit">Alumnos: <span>Emiliano Frias Felix y Jordi Alexis Saldaña</span> | all rights reserved </div>
</section>
<!-- Final Pie de Pagina -->

</body>
</html>