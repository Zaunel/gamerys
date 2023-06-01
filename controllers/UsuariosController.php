<?php 
require_once('models/UsuariosModel.php');
class UsuariosController{
    private $model;
    private $view;
    public function __construct(){
        $this->model = new UsuariosModel();
        $this->view = new Vista();
    }

    public function registrar(){
    if(!empty($_POST['usuario']) && !empty($_POST['email']) && !empty($_POST['contraseña'])){
        $usuario = $_POST['usuario'];
        $email = $_POST['email'];
        $contraseña = password_hash($_POST['contraseña'], PASSWORD_BCRYPT);
        $this->model->mandarDatos($usuario,$email,$contraseña);
    }
    }
    
}

