document.addEventListener('DOMContentLoaded', () => {
    let publishIcon = document.querySelector('#publish-icon');
    let publishForm = document.querySelector('#n-publicacion');
    let menu = document.querySelector('#menu-bars');
    let navbar = document.querySelector('.navbar');
    let searchIcon = document.querySelector('#search-icon');
    let searchForm = document.querySelector('.search-form');

    // Control para el ícono del menú
    menu.onclick = () => {
        menu.classList.toggle('fa-times');
        navbar.classList.toggle('active');

        // Asegurarse de que el cuadro de búsqueda se oculte cuando se activa el menú
        searchIcon.classList.remove('fa-times');
        searchForm.classList.remove('active');

        // Asegurarse de que el cuadro de publicación se oculte
        publishForm.classList.remove('active');
    };

    // Control para el ícono de búsqueda
    searchIcon.onclick = () => {
        searchIcon.classList.toggle('fa-times');
        searchForm.classList.toggle('active');

        // Asegurarse de que el menú se oculte cuando se activa la búsqueda
        menu.classList.remove('fa-times');
        navbar.classList.remove('active');

        // Asegurarse de que el cuadro de publicación se oculte
        publishForm.classList.remove('active');
    };

    // Control para el ícono de publicar
    publishIcon.onclick = (event) => {
        event.preventDefault(); // Evitar que el enlace haga scroll
        publishForm.classList.toggle('active');

        // Asegurarse de que el cuadro de búsqueda se oculte cuando se activa la publicación
        searchIcon.classList.remove('fa-times');
        searchForm.classList.remove('active');

        // Asegurarse de que el menú se oculte
        menu.classList.remove('fa-times');
        navbar.classList.remove('active');
    };

    // Cerrar todos los cuadros cuando se desplaza la página
    window.onscroll = () => {
        publishForm.classList.remove('active');
        searchIcon.classList.remove('fa-times');
        searchForm.classList.remove('active');
        menu.classList.remove('fa-times');
        navbar.classList.remove('active');
    };
});