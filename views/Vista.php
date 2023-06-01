<?php
require_once 'libs/smarty/Smarty.class.php';
class Vista{  
   private $smarty;
    
   public function __construct() {
    $this->smarty = new Smarty();
   }

   function home(){
    $rutaBase = 'http://'.$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF']).'/"'. ' target="_blank';
    $this->smarty->assign('BASE_RUTA', $rutaBase);
    $this->smarty->display('body.tpl');
   }

   function login(){
      $rutaBase = 'http://'.$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF']).'/"'. ' target="_blank';
      $this->smarty->assign('BASE_RUTA', $rutaBase);
      $this->smarty->display('body.tpl');
     }

}