<?php
require_once('controllers/AdminController.php');
class CategoriasModel{
 private $db;

 public function __construct(){
   $this->db = new PDO('mysql:host=localhost;'.'dbname=gamerys;charset=utf8', 'root', '');

 }

 public function eliminarCategoria($id){
  $query = $this->db->prepare('DELETE FROM categorias WHERE id_categoria = ?');
  $query->execute([$id]);
 }

 public function modificarCategoria($categoria,$id_categoria){
  $query = $this->db->prepare('UPDATE categorias SET categoria = ? WHERE id_categoria = ?');
    $query->execute([$categoria, $id_categoria]);
}

 public function insertarCategoria($categoria){
  $query = $this->db->prepare('INSERT INTO categorias (categoria) VALUES (?)');
  $query-> execute([$categoria]);
   
 }

 public function verificarCategoria($categoria){
  $query = $this->db->prepare('SELECT COUNT(*) FROM categorias WHERE categoria = ?');
  $query->execute([$categoria]);
  $count = $query->fetchColumn();
  return $count;
 }

 public function obtenerCategorias(){
    $query = $this->db->prepare('SELECT * FROM categorias');
    $query->execute();
   return $query->fetchAll(PDO::FETCH_ASSOC);
  }

  public function obtenerIdCategoria($categoria){
    $query = $this->db->prepare('SELECT id_categoria FROM categorias WHERE categoria = ?');
    $query->execute([$categoria]);
    return $query->fetchColumn();
  }

  
 

}