<?php
require_once 'libs/smarty/Smarty.class.php';
class AdminVista
{
   private $smarty;

   public function __construct()
   {
      $this->smarty = new Smarty();
   }

   public function admin($params, $juegos, $categorias)
   {
      session_start();
      if(isset($_SESSION['admin'])){
         $template = '';

         if (!empty($params) && $params[0] === 'categorias') {
            $template = 'categorias';
            $this->smarty->assign("categorias", $categorias);
         } elseif (!empty($params) && $params[0] === 'juegos') {
            $template = 'juegos';
            $this->smarty->assign("categorias", $categorias);
            $this->smarty->assign("juegos", $juegos);
         }
         $this->smarty->assign("template", $template);
         $this->smarty->display('admin.tpl');
      }else{
         echo 'Acceso denegado';
      }

   }
}
