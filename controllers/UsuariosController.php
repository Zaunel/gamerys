<?php
require_once('models/UsuariosModel.php');
require_once('views/UsuariosView.php');
require_once('views/defaultView.php');
class UsuariosController
{
    private $UsuariosModel;
    private $UsuariosView;
    private $defaultView;
    private $juegosModel;
    public function __construct()
    {
        $this->UsuariosModel = new UsuariosModel();
        $this->UsuariosView = new UsuariosView();
        $this->defaultView = new defaultView();
        $this->juegosModel = new JuegosModel();
    }
    public function irLogin()
    {
        $this->UsuariosView->login();
    }

    public function registrar()
    {
        if (!empty($_POST['usuario']) && !empty($_POST['email']) && !empty($_POST['contraseña'])) {
            $usuario = $_POST['usuario'];
            $email = $_POST['email'];
            $contraseña = password_hash($_POST['contraseña'], PASSWORD_BCRYPT);
            $count = $this->UsuariosModel->verificarRegistro($usuario, $email, $contraseña);
            $juegos = $this->juegosModel->obtenerJuegos();
            if ($count > 0) {
                $registro = false;
                $this->UsuariosView->showRegistro($registro);
            } else {
                session_start();
                $_SESSION["logeado"] = true;
                $_SESSION["email"] = $email;
                $_SESSION["username"] = $usuario;
                $this->defaultView->home($juegos);
                header("Location: home");
            }
        } else {
            $registro = true;
            $this->UsuariosView->showRegistro($registro);
        }
    }

    public function logear()
    {
        if (!empty($_POST['email']) && !empty($_POST['contraseña'])) {
            $email = $_POST['email'];
            $contraseña = $_POST['contraseña'];
            $user = $this->UsuariosModel->obtenerUsuario($email);
            $juegos = $this->juegosModel->obtenerJuegos();
            if ($user) {
                if (password_verify($contraseña, ($user->contraseña))) {
                    session_start();
                    $_SESSION["logeado"] = true;
                    $_SESSION["email"] = $email;
                    $_SESSION["username"] = $user->usuario;
                    if($user->admin == 1){
                    $_SESSION['admin'] = true;
                    }
                    header("Location: home");
                    $this->defaultView->home($juegos);
                    
                    echo "Acceso exitoso";
                } else {
                    echo "Acceso denegado";
                }
            } else {
                echo "Usuario no encontrado";
            }
        } else {
            $this->UsuariosView->login();
        }
    }

    public function logout()
    {
        session_start();
        session_destroy();
        $juegos = $this->juegosModel->obtenerJuegos();
        header("Location: home");
        
        $this->defaultView->home($juegos);
    
    }
}
