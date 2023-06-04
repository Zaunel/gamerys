<?php
class ConfigApp{
    public static $ACTION = "action";
     public static $PARAMS = "params";
    public static $ACTIONS = [
    'home' => 'Controlador#irHome',
    'login' => 'Controlador#irLogin',
    'registro' => 'UsuariosController#registrar',
    'ingresado' => 'UsuariosController#logear',
    'cerrar_sesion' => 'UsuariosController#logout'
    ];
}

?>