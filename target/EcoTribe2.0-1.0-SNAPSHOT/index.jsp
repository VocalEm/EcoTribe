<%-- 
    Document   : Index
    Created on : Oct 21, 2024, 2:55:31 PM
    Author     : Lenovo
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="Daos.UsuarioDao"%>
<%@page import="Clases.Usuario"%>
<%@page import="Clases.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
    <title>Document | Vanilla Javascript </title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    
    </head>



    <body>

        <header>
            <a href="#" class="logo">Logo</a>
            <ul>
                <li> <a href="login.jsp "class="active" >Login </a></li>

                <li> <a href="#">About </a></li>

                <li> <a href="#">Work </a></li>

                <li> <a href="#">Contact </a></li>
            </ul>
        </header>
        <section>
            <img src="Imagenes/stars.png" id="stars">
            <img src="Imagenes/Luna.png" id = "Luna" alt="Luna">
            <img src="Imagenes/Frente.png" id="Frente" alt="Frente">
            <h2 id="text"> EcoTribe </h2>
            <a href="#sec" id="btn">Explore</a>
            <img src="Imagenes/Fondo2.png" id="Fondo" alt="Fondo">
            

        </section>
        <div class="sec" id="sec">
            <h2>Parallax Scrolling Effects</h2>
            <p>EcoTribe es una red social diseñada para apasionados del cuidado de plantas y la vida sostenible. 
                Aquí, los amantes de la naturaleza se conectan, comparten conocimientos y experiencias, y encuentran inspiración para cultivar un estilo de vida más verde. 
                En EcoTribe, puedes unirte a comunidades dedicadas a la jardinería, plantas de interior, paisajismo, y mucho más. 
                Ya seas un jardinero experimentado o un principiante con una planta en tu ventana, EcoTribe te brinda un espacio para aprender, crecer y conectar con otros que comparten tu amor por lo verde. <br><br>EcoTribe es una red social diseñada para apasionados del cuidado de plantas y la vida sostenible. 
                Aquí, los amantes de la naturaleza se conectan, comparten conocimientos y experiencias, y encuentran inspiración para cultivar un estilo de vida más verde. 
                En EcoTribe, puedes unirte a comunidades dedicadas a la jardinería, plantas de interior, paisajismo, y mucho más. 
                Ya seas un jardinero experimentado o un principiante con una planta en tu ventana, EcoTribe te brinda un espacio para aprender, crecer y conectar con otros que comparten tu amor por lo verde. <br><br>EcoTribe es una red social diseñada para apasionados del cuidado de plantas y la vida sostenible. 
                Aquí, los amantes de la naturaleza se conectan, comparten conocimientos y experiencias, y encuentran inspiración para cultivar un estilo de vida más verde. 
                En EcoTribe, puedes unirte a comunidades dedicadas a la jardinería, plantas de interior, paisajismo, y mucho más. 
                Ya seas un jardinero experimentado o un principiante con una planta en tu ventana, EcoTribe te brinda un espacio para aprender, crecer y conectar con otros que comparten tu amor por lo verde. <br><br></p>


        </div>

      <!-- Post -->
      <div class="main-content">
        <h1>Contenido Destacados</h1>
        <div class="page-wrapper">
            <div id="carouselExampleIndicators" class="carousel slide">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
                </div>
                <div class="carousel-inner">
                    <!-- Primer conjunto de tarjetas -->
                    <div class="carousel-item active">
                        <div class="d-flex justify-content-between">
                            <div class="card">
                                <img src="Imagenes/planta-mascota-gato-falta-tiempo-mejores-opciones-interior-50.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                            <div class="card">
                                <img src="/Imagenes/azalea_df158657_900x600.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                            <div class="card">
                                <img src="Imagenes/flores-1-1024x683.jpeg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Segundo conjunto de tarjetas -->
                    <div class="carousel-item">
                        <div class="d-flex justify-content-between">
                            <div class="card">
                                <img src="Imagenes/otra-imagen-1.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                            <div class="card">
                                <img src="Imagenes/otra-imagen-2.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                            <div class="card">
                                <img src="Imagenes/otra-imagen-3.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Agrega más .carousel-item aquí si es necesario -->
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
             <!-- Botón para crear una nueva publicación -->
        <div class="text-center mt-4">
            <a href="#" class="btn btn-primary">Crear Nueva Publicación</a>
        </div>
    

<!-- Pie de Página -->
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

        </div>

        <script>

            

                let stars = document.getElementById('stars');
                let Luna = document.getElementById('Luna');
                let Frente = document.getElementById('Frente');
                let text = document.getElementById('text');
                let btn = document.getElementById('btn'); 
                let Fondo = document.getElementById('Fondo');


                 window.addEventListener('scroll',function(){

                let value = window.scrollY;
                console.log("Scroll value:", value); 
                stars.style.left = value * 0.25 + 'px';
                Luna.style.top = value * 1.05 + 'px'; 
                Fondo.style.top = value * 0.5 + 'px';
                Frente.style.top = value * 0 + 'px';
                text.style.marginRight = value * 5 + 'px';
                btn.style.marginTop = value * 1.5 + 'px';
                
                
            });
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
