const chatLog = document.getElementById('chat-log');
const userInput = document.getElementById('user-input');
const sendButton = document.getElementById('send-button');
const cerrarButton = document.getElementById('cerrar-chat');
const chatButton = document.getElementById('chat-button');
const chatContainer = document.getElementById('chat-container');

// Opciones del menú
const opciones = {};
document.querySelectorAll('.bot-message').forEach((mensajeElement) => {
  const opcion = mensajeElement.getAttribute('data-option');
  const texto = mensajeElement.textContent.trim();
  opciones[opcion] = texto;
});
let menuActual = 0;





function agregarMensajeBot(mensaje) {
  chatLog.innerHTML += `<div class="bot-message">${mensaje}</div>`;
  chatLog.scrollTop = chatLog.scrollHeight;
}


// Maneja el envío de mensajes
function enviarMensaje() {
  const mensaje = userInput.value;
  userInput.value = '';
  chatLog.innerHTML = '';

  if (opciones[mensaje]) {
    agregarMensajeUsuario(opciones[mensaje]);

    if (mensaje === '1') {
      agregarMensajeBot('¿Qué refacciones necesita?');
      buscarProductos();
    } else if (mensaje === '2') {
      agregarMensajeBot('Puedes encontrarnos en Google Maps <a href="https://www.google.com/maps?q=Avenida+123,Guadalajara,Jalisco" target="_blank">aquí</a>.');
    } else if (mensaje === '3') {
      agregarMensajeBot('Presiona al siguiente enlace para comunicarte con un asesor <a href="https://wa.me/3314305390" target="_blank">aquí</a>.');
    } else {
      agregarMensajeBot('No entiendo, elige una opción del menú');
    }
  }
}
function buscarProductos() {
  const query = "SELECT nombre, proveedor, precio FROM productos";
  connection.query(query, function(err, productos) {
    if (err) {
      throw err;
    } else {
      if (productos.length > 0) {
        // Formatear los resultados y mostrarlos en el chat
        const mensaje = productos.map(producto => `${producto.nombre} - ${producto.proveedor} - Precio: ${producto.precio}`).join('<br>');
        agregarMensajeBot(mensaje);
      } else {
        agregarMensajeBot('No hay productos disponibles en este momento.');
      }
    }
  });
}


// Agrega un mensaje del usuario al chat
function agregarMensajeUsuario(mensaje) {
  chatLog.innerHTML += `<div class="user-message">${mensaje}</div>`;
}

// Escucha el envío del formulario
userInput.addEventListener('keydown', (e) => {
  if (e.key === 'Enter') {
    e.preventDefault();
    enviarMensaje();
  }
});

sendButton.addEventListener('click', enviarMensaje);

// Lógica para abrir y cerrar el chat
chatButton.addEventListener('click', () => {
  chatButton.style.display = 'none';
  chatContainer.style.display = 'block';
});

cerrarButton.addEventListener('click', () => {
  chatContainer.style.display = 'none';
  chatButton.style.display = 'block';
});

