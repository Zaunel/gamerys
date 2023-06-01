<?php
require_once("views/Vista.php");
class Controlador{

    private $view;
    function __construct(){
     $this->view = new Vista();
    }

    public function irHome(){
        $this->view->home();
    }

    public function irLogin(){
        $this->view->login();
    }
//    public function irLogin(){
//     $this->view->showLogin();
//    }
}
