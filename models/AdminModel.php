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
public function subirJuego($imagen, $nombreJuego, $descJuego, $precioJuego, $categorias){
  $query2 = $this->db->prepare('INSERT INTO juegos (imagen, juego, descripcion, precio, id_categoria) VALUES (?, ?, ?, ?, ?)');
  $query2->execute([$imagen, $nombreJuego, $descJuego, $precioJuego, $categorias]);
     
}
 public function verificarInsert($nombreJuego){
  $query = $this->db->prepare('SELECT COUNT(*) FROM juegos WHERE juego = ?');
  $query->execute([$nombreJuego]);
  $count = $query->fetchColumn();
  return $count;
 }

 public function eliminarFila($id){
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

}




 ?>