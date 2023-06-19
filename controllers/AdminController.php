<?php 
require_once('models/AdminModel.php');
require_once('views/Vista.php');
require_once('models/CategoriasModel.php');

class AdminController{
    private $modelAdmin;
    private $modelCategorias;
    private $view;
    public function __construct(){
        $this->modelAdmin = new AdminModel();
        $this->modelCategorias = new CategoriasModel();
        $this->view = new Vista();
    
    }

    public function insertarJuego()
{ 

    if (isset($_FILES['imagen']) && isset($_FILES['imagen']['name']) && !empty($_POST['nombre-juego']) && !empty($_POST['descripcion-juego']) && !empty($_POST['precio-juego']) && !empty($_POST['categorias'])) {
        $nombre_archivo = $_FILES['imagen']['name'];
        $archivo_temporal = $_FILES['imagen']['tmp_name'];
        $nombreJuego = $_POST['nombre-juego'];
        $descJuego = $_POST['descripcion-juego'];
        $precioJuego = $_POST['precio-juego'];
        $categorias = $_POST['categorias'];

        $count = $this->modelAdmin->verificarInsert($nombreJuego);
        if ($count < 1) {
             // Ruta de la carpeta donde se guardarán las imágenes
             $carpeta_destino = 'imagenes';
    
             // Construir la ruta completa del archivo de destino
             $destino = $carpeta_destino .'/'.$nombre_archivo;
 
            // Mover el archivo subido a la carpeta de destino
            if (move_uploaded_file($archivo_temporal, $destino)) {
                // Guardar el nombre del archivo en la base de datos
                $this->modelAdmin->subirJuego($nombre_archivo, $nombreJuego, $descJuego, $precioJuego, $categorias);
            } else {
                // Error al mover el archivo
                echo "Error al subir el archivo.";
            }
        } else {
            // El juego ya existe
            echo "El juego ya existe.";
        }
    } else {
        // Campos vacíos
        echo "Por favor, complete todos los campos.";
    }
}

    public function panelAdmin(){
        $categorias = $this->modelCategorias->obtenerCategorias();
        $juegos = $this->modelAdmin->obtenerJuegos();
        $this->view->admin($categorias,$juegos);
    }

    public function idEliminar(){
        if (isset($_POST['btn_eliminar'])) {
            $id = $_POST['btn_eliminar'];
            $imagen = $this->modelAdmin->obtenerImagen($id);
            $ruta = "imagenes/".$imagen;
            echo $imagen;
            if (file_exists($ruta)) {
                if (unlink($ruta)) {
                    // El archivo se eliminó correctamente
                    echo "El archivo se eliminó correctamente.";
                } else {
                    // Error al eliminar el archivo
                    echo "Error al eliminar el archivo.";
                }
            } else {
                // El archivo no existe en la carpeta
                echo "El archivo no existe.";
            }
          }
          $this->modelAdmin->eliminarFila($id);
    }

    public function obtenerCategoria(){
        if(isset($_POST['categoria']) && !empty($_POST['categoria'])){
         $categoria = $_POST['categoria'];
        }
        $this->modelAdmin->insertarCategoria($categoria); 
       }
    


}
    



