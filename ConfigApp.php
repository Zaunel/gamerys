<?php
class ConfigApp{
    public static $ACTION = "action";
     public static $PARAMS = "params";
    public static $ACTIONS = [
    'home' => 'Controlador#irHome',
    'login' => 'Controlador#irLogin',
    'admin' => 'AdminController#panelAdmin',
    'registro' => 'UsuariosController#registrar',
    'ingresado' => 'UsuariosController#logear',
    'cerrar_sesion' => 'UsuariosController#logout',
    'requestGame' => 'AdminController#requestGame',
    'requestCategory' => 'AdminController#requestCategory'
    ];
}

?>
