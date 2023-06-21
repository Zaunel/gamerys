<?php
require_once('controllers/AdminController.php');
class AdminModel{
 private $db;


 public function __construct(){
   $this->db = new PDO('mysql:host=localhost;'.'dbname=gamerys;charset=utf8', 'root', '');

 }
  
 public function obtenerJuegos(){
  $query = $this->db->prepare('SELECT * FROM juegos');
  $query->execute();
  return $query->fetchAll(PDO::FETCH_ASSOC);
}
public function subirJuego($imagen, $nombreJuego, $descJuego, $precioJuego, $categoria){
  $query2 = $this->db->prepare('INSERT INTO juegos (imagen, juego, descripcion, precio, id_categoria) VALUES (?, ?, ?, ?, ?)');
  $query2->execute([$imagen, $nombreJuego, $descJuego, $precioJuego, $categoria]);
}

public function modificarJuego($imagen,$nombreJuego,$descJuego,$precioJuego,$categoria,$idJuego){
   
    $query = $this->db->prepare('UPDATE juegos SET imagen = ?, juego = ?, descripcion = ?, precio = ?, id_categoria = ? WHERE id_juego = ?');
    $query->execute([$imagen, $nombreJuego,$descJuego, $precioJuego, $categoria, $idJuego]);

    if ($query->rowCount() > 0) {
        return true;
    } else {
         return false;
    }
  }

 public function verificarJuego($nombreJuego){
  $query = $this->db->prepare('SELECT COUNT(*) FROM juegos WHERE juego = ?');
  $query->execute([$nombreJuego]);
  $count = $query->fetchColumn();
  return $count;
 }

 public function verificarCategoria($categoria){
  $query = $this->db->prepare('SELECT COUNT(*) FROM categorias WHERE categoria = ?');
  $query->execute([$categoria]);
  $count = $query->fetchColumn();
  return $count;
 }


 public function eliminarJuego($id){
  $query = $this->db->prepare('DELETE FROM juegos WHERE id_juego = ?');
  $query->execute([$id]);
 }

 public function obtenerImagen($id){
  $query = $this->db->prepare("SELECT imagen FROM juegos WHERE id_juego = ?"); 
  $query->execute([$id]);
  return $query->fetch(PDO::FETCH_COLUMN);
 }

 public function insertarCategoria($categoria){
 $query = $this->db->prepare('INSERT INTO categorias (categoria) VALUES (?)');
 $query-> execute([$categoria]);
  
}

public function modificarCategoria($categoria,$id_categoria){
  $query = $this->db->prepare('UPDATE categorias SET categoria = ? WHERE id_categoria = ?');
    $query->execute([$categoria, $id_categoria]);
}

public function eliminarCategoria($id){
  $query = $this->db->prepare('DELETE FROM categorias WHERE id_categoria = ?');
  $query->execute([$id]);
 }

}


 ?>