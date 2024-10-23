document.getElementById('comment-form').addEventListener('submit', function(e) {
    e.preventDefault();
    
    // Obtener el mensaje del comentario
    const commentMessage = document.getElementById('comment-message').value;
    
    // Crear un nuevo div para el comentario
    const commentDiv = document.createElement('div');
    commentDiv.classList.add('comment');
    
    // Agregar la imagen predeterminada del usuario
    const userImage = document.createElement('img');
    userImage.src =  'url(../Imagenes/Emi.jpg)'; // Cambia la ruta por una imagen predeterminada o de perfil
    userImage.alt = 'User Avatar';
    
    // Crear un párrafo para el mensaje
    const commentText = document.createElement('p');
    commentText.textContent = commentMessage;
    
    // Agregar la imagen y el texto al div del comentario
    commentDiv.appendChild(userImage);
    commentDiv.appendChild(commentText);
    
    // Agregar el comentario a la sección de comentarios
    document.getElementById('comment-section').appendChild(commentDiv);
    
    // Limpiar el formulario
    document.getElementById('comment-message').value = '';
});