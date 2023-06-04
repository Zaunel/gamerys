<?php
require_once('controllers/UsuariosController.php');
class UsuariosModel{
 private $db;
 private $model;

 public function __construct(){
   $this->db = new PDO('mysql:host=localhost;'.'dbname=gamerys;charset=utf8', 'root', '');

 }


 public function verificarRegistro($usuario,$email,$contraseña){
  $query = $this->db->prepare('SELECT COUNT(*) FROM registro WHERE email = ? OR usuario = ?');
  $query->execute([$email,$usuario]);
  $count = $query->fetchColumn();
  if($count>0){
    return $count;
  }else{
   $this->mandarRegistro($usuario,$email,$contraseña);
   return $count;
  }
 }

 public function mandarRegistro($usuario,$email,$contraseña){
    $query2 = $this->db->prepare('INSERT INTO registro (usuario, email, contraseña) VALUES (?, ?, ?)');
    $query2->execute([$usuario,$email,$contraseña]);
 }

 public function obtenerUsuario($UserEmail){
   $query = $this->db->prepare('SELECT * FROM registro WHERE email = ?');
   $query->execute([$UserEmail]);
  return $query->fetch(PDO::FETCH_OBJ);
 }
}