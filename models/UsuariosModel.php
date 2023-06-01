<?php
class UsuariosModel{
 private $db;

 public function __construct(){
   $this->db = new PDO('mysql:host=localhost;'.'dbname=gamerys;charset=utf8', 'root', '');
 }

 public function mandarDatos($usuario,$email,$contraseña){
   $query = $this->db->prepare('INSERT INTO registro (usuario, email, contraseña) VALUES (?, ?, ?)');
   $query->execute([$usuario,$email,$contraseña]);
 }
}