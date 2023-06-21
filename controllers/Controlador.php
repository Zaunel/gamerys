<?php
require_once("views/defaultView.php");
require_once("models/JuegosModel.php");
require_once("models/CategoriasModel.php");
class Controlador{
    private $JuegosModel;
    private $CategoriasModel;
    private $defaultView;
    function __construct(){
     $this->defaultView = new defaultView();
     $this->JuegosModel = new JuegosModel();
     $this->CategoriasModel = new CategoriasModel();
    }

    public function irCategorias($params = null){
        $juegos = $this->JuegosModel->obtenerJuegos();
        $categorias = $this->CategoriasModel->obtenerCategorias();
        if (!empty($params)) {
            $categoria = $params[0]; // Obtener el valor de la categoría del primer elemento del array
            $juegos = $this->JuegosModel->obtenerJuegosXcategoria($categoria);
        }
        $this->defaultView->categorias($params, $juegos, $categorias);
    }


    public function irHome(){
        session_start();
        $juegos = $this->JuegosModel->obtenerJuegos();
        $this->defaultView->home($juegos); 
    }
   

    public function irAlJuego($params){
        $nombreJuego = str_replace('-', ' ', $params[0]);
        $juego = $this->JuegosModel->obtenerJuegoXnombre($nombreJuego);
        $categorias = $this->CategoriasModel->obtenerCategorias();
        $this->defaultView->juego($juego,$categorias);
        
    }

    

}
