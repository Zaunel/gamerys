<?php

class CategoriasModel{
 private $db;

 public function __construct(){
   $this->db = new PDO('mysql:host=localhost;'.'dbname=gamerys;charset=utf8', 'root', '');

 }

 public function obtenerCategorias(){
    $query = $this->db->prepare('SELECT * FROM categorias');
    $query->execute();
   return $query->fetchAll(PDO::FETCH_ASSOC);
  }
 

}