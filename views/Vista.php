<?php
require_once 'libs/smarty/Smarty.class.php';
class Vista
{
   private $smarty;
   private $logeado;
   
   public function __construct()
   {
      $this->smarty = new Smarty();
      
   }

   function home()
   {
      $logeado = isset($_SESSION['logeado']) ? $_SESSION['logeado'] : false;
      if ($logeado) {
         $this->smarty->assign("usuario", $_SESSION['username']);
         $this->smarty->assign("logeado", $logeado);
      } else {
         $this->smarty->assign("logeado", $logeado);
      }
      $this->smarty->display('body.tpl');
   }

   public function admin($params, $juegos, $categorias)
   {
      $template = '';

      if (!empty($params) && $params[0] === 'usuarios') {
         $template = 'usuarios';
         $this->smarty->assign("template", $template);
      } elseif (!empty($params) && $params[0] === 'categorias') {
         $template = 'categorias';
         $this->smarty->assign("categorias", $categorias);
         $this->smarty->assign("template", $template);
      } elseif (!empty($params) && $params[0] === 'juegos') {
         $template = 'juegos';
         $this->smarty->assign("categorias", $categorias);
         $this->smarty->assign("juegos", $juegos);
         $this->smarty->assign("template", $template);
      } else {
         $this->smarty->assign('template', $template);
      }

      $this->smarty->display('admin.tpl');
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
