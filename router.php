<?php
require_once "ConfigApp.php";
require_once "controllers/Controlador.php";
require_once "views/defaultView.php";
require_once "controllers/UsuariosController.php";
require_once "models/UsuariosModel.php";
require_once "models/JuegosModel.php";
require_once "controllers/AdminController.php";
require_once "models/CategoriasModel.php";
require_once "views/AdminView.php";
require_once "views/UsuariosView.php";

define('BASE_ADMIN', 'http://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/admin');
define('BASE_JUEGOS', 'http://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/juegos');
define('BASE_CATEGORIAS', 'http://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/categorias');
define('BASE_RUTA', 'http://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');


function parseURL($url){
  $partesURL = explode("/", $url);

  $arrayReturn[ConfigApp::$ACTION] = $partesURL[0];
  $arrayReturn[ConfigApp::$PARAMS] = isset($partesURL[1]) ? array_slice($partesURL, 1) : null;

  return $arrayReturn;
}
$urlData = parseURL($_GET[ConfigApp::$ACTION]);

$actionName = $urlData[ConfigApp::$ACTION];

if(array_key_exists($actionName, ConfigApp::$ACTIONS)){
 $params = $urlData[ConfigApp::$PARAMS];

 $controllerMetodo = explode('#', ConfigApp::$ACTIONS[$actionName]);
 $controller = new $controllerMetodo[0];
 $methodName = $controllerMetodo[1];
 if(isset($params) && $params != null){
    echo $controller->$methodName($params);
 }else{
   echo $controller->$methodName();
 }
}else{
  header("Location: home");
}

?>