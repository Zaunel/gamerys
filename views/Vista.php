<?php
require_once 'libs/smarty/Smarty.class.php';
class Vista{  
   private $smarty;
    
   public function __construct() {
    $this->smarty = new Smarty();
   }

   function home(){
      $logeado = isset($_SESSION['logeado']) ? $_SESSION['logeado'] : false;
      if($logeado){
         $rutaBase = 'http://'.$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF']).'/"';
         $this->smarty->assign('BASE_RUTA', $rutaBase);
         $logeado = true;
         $this->smarty->assign("usuario", $_SESSION['username']);
         $this->smarty->assign("logeado", $logeado);
         $this->smarty->display('body.tpl');
      }else{
         $rutaBase = 'http://'.$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF']).'/"';
         $this->smarty->assign("logeado", $logeado);
         $this->smarty->assign('BASE_RUTA', $rutaBase);
         $this->smarty->display('body.tpl');
      }
   }

   function login(){
      $rutaBase = 'http://'.$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF']).'/"';
      $this->smarty->assign('BASE_RUTA', $rutaBase);
      $this->smarty->display('login.tpl');
     }

   function showRegistro($registro){
      $rutaBase = 'http://' . $_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']) . '/';
      $this->smarty->assign('BASE_RUTA', $rutaBase);
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