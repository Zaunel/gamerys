<?php
require_once("views/Vista.php");
class Controlador{

    private $view;
    function __construct(){
     $this->view = new Vista();
    }

    public function irHome(){
        session_start();
        $this->view->home();
    }

    public function irLogin(){
       $this->view->login();
    }
    

}
