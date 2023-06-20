<?php
require_once "ConfigApp.php";
require_once "controllers/Controlador.php";
require_once "views/Vista.php";
require_once "controllers/UsuariosController.php";
require_once "models/UsuariosModel.php";
require_once "models/AdminModel.php";
require_once "controllers/AdminController.php";
require_once "models/CategoriasModel.php";

define('BASE_ADMIN', 'http://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

function parseURL($url){
  $partesURL = explode("/", $url);

  $arrayReturn[ConfigApp::$ACTION] = $partesURL[0]; // Obtener la acción principal

  // Verificar si hay una ruta adicional después de la acción principal
  if (isset($partesURL[1]) && $partesURL[1] !== '') {
      $arrayReturn[ConfigApp::$ACTION] .= '/' . $partesURL[1]; // Agregar la ruta adicional a la acción
  }

  $arrayReturn[ConfigApp::$PARAMS] = isset($partesURL[2]) ? array_slice($partesURL, 2) : null; // Obtener los parámetros a partir del índice 2
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