// let btn_usuarios = document.getElementById('btn_usuarios');
// let btn_categorias = document.getElementById('btn_categorias');
// let btn_juegos = document.getElementById('btn_juegos');
// let sect_juegos = document.getElementById('sect_juegos');
// let sect_categorias = document.getElementById('sect_categorias');
// let sect_users = document.getElementById('sect_users');

// let agregar_juego = document.getElementById('agregar_juego');

// sect_categorias.classList.add('occult');
// sect_juegos.classList.add('occult');

// function ocultarSecciones(e){
//    if(btn_usuarios === e.target){
//     sect_users.classList.remove('occult');
//     sect_categorias.classList.add('occult');
//     sect_juegos.classList.add('occult');
//    }
//    else if(btn_categorias === e.target){
//     sect_categorias.classList.remove('occult');
//     sect_juegos.classList.add('occult');
//     sect_users.classList.add('occult');
//    }
//    else if(btn_juegos === e.target || agregar_juego === e.target){
//     sect_juegos.classList.remove('occult');
//     sect_categorias.classList.add('occult');
//     sect_users.classList.add('occult');
//    }
// }

// btn_usuarios.addEventListener('click', function(e){
//     ocultarSecciones(e);
// });
// btn_categorias.addEventListener('click', function(e){
//     ocultarSecciones(e);
// });
// btn_juegos.addEventListener('click', function(e){
//     ocultarSecciones(e);
// });
// agregar_juego.addEventListener('click', function(e){
//     ocultarSecciones(e);
// })

// document.addEventListener('DOMContentLoaded', function() {
//     let form = document.getElementById('form_juegos');
//     form.addEventListener('submit', function(e) {
//       e.preventDefault(); // Evitar que se recargue la página

//       let formData = new FormData(form);

//       // Realizar la petición AJAX utilizando la API Fetch
//       fetch('juegos', {
//         method: 'POST',
//         body: formData
//       })
//       .then(function(response) {
//         // Acciones a realizar cuando se recibe la respuesta
//         return response.text();
//       })
//       .then(function(data) {
//         console.log(data); // Ejemplo: mostrar la respuesta en la consola
//       })
//       .catch(function(error) {
//         // Acciones a realizar en caso de error
//         console.error(error); // Ejemplo: mostrar el error en la consola
//       });
//     });
//   });