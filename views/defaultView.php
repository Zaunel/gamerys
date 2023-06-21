<?php
require_once 'libs/smarty/Smarty.class.php';
class defaultView{
   private $smarty;
   private $logeado;
   
   public function __construct()
   {
      $this->smarty = new Smarty();
      
   }

   function home($juegos){
      $logeado = isset($_SESSION['logeado']) ? $_SESSION['logeado'] : false;
      $this->smarty->assign("juegos", $juegos);
      $this->smarty->assign("logeado", $logeado);
      if ($logeado) {
         $this->smarty->assign("usuario", $_SESSION['username']);
      } 
      $this->smarty->display('body.tpl');
   }


   public function juego($juego,$categorias){
      session_start();
      $logeado = isset($_SESSION['logeado']) ? $_SESSION['logeado'] : false;
      if ($logeado) {
         $this->smarty->assign("usuario", $_SESSION['username']);
     }
      $this->smarty->assign("logeado", $logeado);
      $this->smarty->assign("categorias", $categorias);
      $this->smarty->assign("juego", $juego);
      $this->smarty->display("elJuego.tpl");
   }

   public function categorias($params, $juegos, $categorias) {
      session_start();
      $logeado = isset($_SESSION['logeado']) ? $_SESSION['logeado'] : false;
      $incluyendo = null;
      $this->smarty->assign("logeado", $logeado);
      $this->smarty->assign("categorias", $categorias);
      $this->smarty->assign("juegos", $juegos);

      
      if ($logeado) {
          $this->smarty->assign("usuario", $_SESSION['username']);
      }
      
      if (!empty($params)) {
          $incluyendo = true;
          $this->smarty->assign("incluyendo", $incluyendo);
          $this->smarty->display('laCategoria.tpl');
      } else {
          $incluyendo = false;
          $this->smarty->assign("incluyendo", $incluyendo);
          $this->smarty->display('categoriasV.tpl');
      }
  }
}
