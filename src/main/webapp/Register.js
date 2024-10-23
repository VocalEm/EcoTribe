let errores = [];

document.getElementById("Register-form").addEventListener("submit", function (event) {
  // Evita el envío del formulario por defecto
  event.preventDefault();
  errores = []; // Reinicia el array de errores

  const nombre = document.getElementById("nombre").value;
  const apellidoP = document.getElementById("apellido-paterno").value;
  const apellidoM = document.getElementById("apellido-materno").value;
  const username = document.getElementById("username").value;
  const email = document.getElementById("email").value;
  let fechaNac = document.getElementById("birthday").value;
  const password = document.getElementById("create-password").value;
  const password_confirm = document.getElementById("confirm-password").value;

  const nombreValidacion = /^[A-Za-z\s]{3,50}$/;
  const usernameValidacion = /^[A-Za-z0-9]{4,50}$/;
  const emailValidacion = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  const passwordValidacion = /^(?=.*\d)(?=.*[\W_]).{8,20}$/;


  // Validaciones
  if (!nombreValidacion.test(nombre)) {
    errores.push("El nombre debe tener entre 3 y 50 caracteres (solo letras)");
  }

  if (!nombreValidacion.test(apellidoP)) {
    errores.push("El apellido paterno debe tener entre 3 y 50 caracteres (solo letras)");
  }

  if (!nombreValidacion.test(apellidoM)) {
    errores.push("El apellido materno debe tener entre 3 y 50 caracteres (solo letras)");
  }

  if (!usernameValidacion.test(username)) {
    errores.push("El username debe tener entre 4 y 50 caracteres (solo números y letras)");
  }

  if (!passwordValidacion.test(password)) {
    errores.push("La contraseña debe tener al menos 8 caracteres, incluyendo 1 número y 1 símbolo especial");
  }

  if (password !== password_confirm) {
    errores.push("Las contraseñas no coinciden");
  }

  if (!emailValidacion.test(email)) {
    errores.push("Ingresa un email válido");
  }
   // Validación de fecha de nacimiento (debe ser mayor de 18 años y menor de 100 años)
            const hoy = new Date();
            const fechaNacimiento = new Date(fechaNac);
            let edad = hoy.getFullYear() - fechaNacimiento.getFullYear();
            const mes = hoy.getMonth() - fechaNacimiento.getMonth();
            if (mes < 0 || (mes === 0 && hoy.getDate() < fechaNacimiento.getDate())) {
                edad--;
            }

            if (edad < 18 || edad > 100) {
                errores.push('Debes tener al menos 18 años y menos de 100 años para registrarte.');
            }


  // Mostrar errores o enviar formulario
  const erroresContainer = document.getElementById("errores");
  erroresContainer.innerHTML = ""; // Limpia errores previos

  if (errores.length > 0) {
    errores.forEach((error) => {
      const p = document.createElement("p");
      p.textContent = error;
      erroresContainer.appendChild(p);
    });
  } else {
    this.submit(); // Envía el formulario si no hay errores
  }
});
