<?php
require_once 'libs/smarty/Smarty.class.php';
class UsuariosView{
   private $smarty;
   private $logeado;
   
   public function __construct()
   {
      $this->smarty = new Smarty();
      
   }

   function login()
   {
      $logeado = isset($_SESSION['logeado']) ? $_SESSION['logeado'] : false;
      $this->smarty->assign("logeado", $logeado);
      $this->smarty->display('login.tpl');
   }

   function showRegistro($registro)
   {
      $logeado = isset($_SESSION['logeado']) ? $_SESSION['logeado'] : false;
      $this->smarty->assign("logeado", $logeado);
      $tituloError = "<h2>Ya hay un usuario o email existente, pruebe con otro</h2>";
      if ($registro == false) {
         $this->smarty->assign("titulo_error", $tituloError);
      } else {
         $tituloError = null;
         $this->smarty->assign("titulo_error", $tituloError);
      }
      $this->smarty->display('registro.tpl');
   }
}