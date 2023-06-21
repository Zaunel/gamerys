<?php
class ConfigApp{
    public static $ACTION = "action";
     public static $PARAMS = "params";
    public static $ACTIONS = [
        'home' => 'Controlador#irHome',
        'login' => 'UsuariosController#irLogin',
        'admin' => 'AdminController#panelAdmin',
        'registro' => 'UsuariosController#registrar',
        'ingresado' => 'UsuariosController#logear',
        'salir' => 'UsuariosController#logout',
        'requestGame' => 'AdminController#requestGame',
        'requestCategory' => 'AdminController#requestCategory',
        "categorias" => "Controlador#irCategorias",
        "juegos" => "Controlador#irAlJuego"
    ];
}

?>
