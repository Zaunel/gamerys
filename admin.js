btn_juegos = document.getElementById('btn_juegos');
btn_categorias = document.getElementById('btn_categorias');
btn_usuarios = document.getElementById('btn_usuarios');
sect_usuario = document.getElementById('sect_users');
sect_juegos = document.getElementById('sect_juegos');
sect_categorias = document.getElementById('sect_categorias');
btn_modificar = document.getElementById('btn_modificar');
tabla = document.getElementById('tabla');
input_juego = document.getElementById('input_juego');
input_descripcion = document.getElementById('input_descripcion');
input_precio = document.getElementById('input_precio');

sect_juegos.classList.add('occult');
sect_categorias.classList.add('occult');

function mostrarJuegos(){
sect_juegos.classList.remove('occult');
sect_usuario.classList.add('occult');
sect_categorias.classList.add('occult');
}

function mostrarCategorias(){
sect_categorias.classList.remove('occult');
sect_usuario.classList.add('occult');
sect_juegos.classList.add('occult');
}

function mostrarUsuarios(){
    sect_usuario.classList.remove('occult');
    sect_categorias.classList.add('occult');
    sect_juegos.classList.add('occult');
}


function obtenerValoresDeTabla() {
    // Obtener todas las filas de la tabla
    const filas = tabla.getElementsByTagName('tr');
  
    // Recorrer todas las filas excepto la primera (encabezados)
    for (let i = 0; i < filas.length; i++) {
      const celdas = filas[i].getElementsByTagName('td');
      const juego = celdas[1].innerHTML;
      const descripcion = celdas[2].innerHTML;
      const precio = celdas[3].innerHTML;
      insertarInput(juego,descripcion,precio);
    }
  }

function insertarInput(juego,descripcion,precio){
 input_juego.value = juego;
 input_descripcion.value = descripcion;
 input_precio.value = precio;
}



btn_juegos.addEventListener('click',mostrarJuegos);
btn_categorias.addEventListener('click',mostrarCategorias);
btn_usuarios.addEventListener('click',mostrarUsuarios);

