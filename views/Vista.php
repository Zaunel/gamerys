<?php
require_once 'libs/smarty/Smarty.class.php';
class Vista{  
   private $smarty;
   private $logeado;
   private $rutaBase;
   public function __construct() {
    $this->smarty = new Smarty();
    $this->rutaBase = 'http://'.$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF']).'/"';
   }

   function home(){
      $logeado = isset($_SESSION['logeado']) ? $_SESSION['logeado'] : false;
      if($logeado){
         $this->smarty->assign('BASE_RUTA', $this->rutaBase);
         $this->smarty->assign("usuario", $_SESSION['username']);
         $this->smarty->assign("logeado", $logeado);
         $this->smarty->display('body.tpl');
      }else{
         $this->smarty->assign('BASE_RUTA', $this->rutaBase);
         $this->smarty->assign("logeado", $logeado);
         $this->smarty->display('body.tpl');
      }
   }

   function admin($categorias,$juegos){
      $rutaBase = 'http://'.$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF']).'/"';
      $this->smarty->assign('BASE_RUTA', $rutaBase);
      $this->smarty->assign("categorias", $categorias); 
      $this->smarty->assign("juegos", $juegos);
      $this->smarty->display('admin.tpl');
   }

   function login(){
      $logeado = isset($_SESSION['logeado']) ? $_SESSION['logeado'] : false;
      $this->smarty->assign('BASE_RUTA', $this->rutaBase);
      $this->smarty->assign("logeado", $logeado);
      $this->smarty->display('login.tpl');
     }

   function showRegistro($registro){
      $logeado = isset($_SESSION['logeado']) ? $_SESSION['logeado'] : false;
      $this->smarty->assign('BASE_RUTA', $this->rutaBase);
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
      
      
      
      
//    if ($registro == false) {
//           $this->smarty->assign("titulo_error", $tituloError);
//           $this->smarty->display('registro.tpl');
//       } else {
//          $tituloError = null;
//           $this->smarty->assign("titulo_error", $tituloError);
//           $this->smarty->display('registro.tpl');
//       }
//    }
// }