<?php 
require_once('models/UsuariosModel.php');
require_once('views/Vista.php');
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
            $count = $this->model->verificarRegistro($usuario,$email,$contraseña);
            if($count>0){
             $registro = false;
             $this->view->showRegistro($registro);
            }else{ 
             session_start();
             $_SESSION["logeado"] = true;
             $_SESSION["email"] = $email;
             $_SESSION["username"] = $usuario;
             header("Location: home");
             $this->view->home();
            }
        }else{
            $registro = true;
            $this->view->showRegistro($registro);
        }
    }
    
    public function logear(){
        if(!empty($_POST['email']) && !empty($_POST['contraseña'])){
            $email = $_POST['email'];
            $contraseña = $_POST['contraseña'];
            $user = $this->model->obtenerUsuario($email);
            if($user){
                if(password_verify($contraseña,($user->contraseña))){
                  session_start();
                  $_SESSION["logeado"] = true;
                  $_SESSION["email"] = $email;
                  $_SESSION["username"] = $user->usuario;
                  $this->view->home();
                  header("Location: home");
                  echo "Acceso exitoso";
                  }else{
                     echo "Acceso denegado";
                  }
               }else{
                echo "Usuario no encontrado";
               }
             }else{
                $this->view->login();
             }
        }

     public function logout(){
        session_start();
        session_destroy();
        $this->view->home();
        header("Location: home");
     }   
    }




