//Seccion juegos
if(document.getElementById('modificar_juego')!=null){


const btn_modificar = document.getElementById('modificar_juego');
const btn_agregar = document.getElementById('agregar_juego');
const input_id_juego = document.getElementById('input_id_juego');
btn_modificar.classList.add('occult');

document.querySelectorAll('.tabla .btn_modificar').forEach(function(btn) {
    btn.addEventListener('click', function(event) {
      event.preventDefault(); 
      btn_agregar.classList.add('occult');
      btn_modificar.classList.remove('occult');
      input_id_juego.classList.remove('occult');
      const fila = this.closest('tr');
      const juego = fila.querySelector('.juego').textContent;
      const descripcion = fila.querySelector('.descripcion').textContent;
      const precio = fila.querySelector('.precio').textContent;
      const id_juego = fila.querySelector('.id_juego').textContent;
      const precioSinSimbolo = precio.replace("$","");
  
      document.getElementById('input_juego').value = juego;
      document.getElementById('input_descripcion').value = descripcion;
      document.getElementById('input_precio').value = precioSinSimbolo;
      input_id_juego.value = id_juego;
    });
  });
}
//Seccion categoria
if(document.getElementById('modificar_categoria')!=null){
const input_id_categoria = document.getElementById('input_id_categoria');
const btn_modificar_categoria = document.getElementById('modificar_categoria');
const btn_agregar_categoria = document.getElementById('agregar_categoria');
const input_categoria = document.getElementById('input_categoria');


btn_modificar_categoria.classList.add('occult');

document.querySelectorAll('.tabla .btn_modificar2').forEach(function(btn) {
    btn.addEventListener('click',function(event){
    event.preventDefault();
    btn_agregar_categoria.classList.add('occult');
    btn_modificar_categoria.classList.remove('occult');
    const fila = this.closest('tr');
    const categoria = fila.querySelector('.categoria').textContent;
    const id_categoria = fila.querySelector('.id_categoria').textContent;
    input_categoria.value = categoria;
    input_id_categoria.value = id_categoria;
    })
});
}

