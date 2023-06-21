<?php
require_once('models/JuegosModel.php');
require_once('views/defaultView.php');
require_once('models/CategoriasModel.php');

class AdminController
{
    private $JuegosModel;
    private $CategoriasModel;
    private $defaultView;
    public function __construct()
    {
        $this->JuegosModel = new JuegosModel();
        $this->CategoriasModel = new CategoriasModel();
        $this->defaultView = new AdminVista();
    }


    public function requestGame()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (isset($_POST["agregar_juego"])) {
                $this->agregarJuego();
            } elseif (isset($_POST["modificar_juego"])) {
                $this->modificarJuego();
            } elseif (isset($_POST['btn_eliminar'])) {
                $this->idJuegoEliminar();
            }
        }
    }
    public function agregarJuego()
    {
        if (isset($_FILES['imagen']) && isset($_FILES['imagen']['name']) && !empty($_POST['nombre-juego']) && !empty($_POST['descripcion-juego']) && !empty($_POST['precio-juego']) && !empty($_POST['categorias'])) {
            $nombre_archivo = $_FILES['imagen']['name'];
            $archivo_temporal = $_FILES['imagen']['tmp_name'];
            $nombreJuego = $_POST['nombre-juego'];
            $descJuego = $_POST['descripcion-juego'];
            $precioJuego = $_POST['precio-juego'];
            $categorias = $_POST['categorias'];

            $count = $this->JuegosModel->verificarJuego($nombreJuego);
            if ($count < 1) {
                // Ruta de la carpeta donde se guardarán las imágenes
                $carpeta_destino = 'imagenes';

                // Construir la ruta completa del archivo de destino
                $destino = $carpeta_destino . '/' . $nombre_archivo;

                // Mover el archivo subido a la carpeta de destino
                if (move_uploaded_file($archivo_temporal, $destino)) {
                    // Guardar el nombre del archivo en la base de datos
                    $this->JuegosModel->subirJuego($nombre_archivo, $nombreJuego, $descJuego, $precioJuego, $categorias);
                    header("Location: admin/juegos");
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


    public function modificarJuego()
    {
        if (isset($_FILES['imagen']) && isset($_FILES['imagen']['name']) && !empty($_POST['nombre-juego']) && !empty($_POST['descripcion-juego']) && !empty($_POST['precio-juego']) && !empty($_POST['categorias']) && !empty($_POST['id_juego'])) {
            $nombre_archivo = $_FILES['imagen']['name'];
            $archivo_temporal = $_FILES['imagen']['tmp_name'];
            $nombreJuego = $_POST['nombre-juego'];
            $descJuego = $_POST['descripcion-juego'];
            $precioJuego = $_POST['precio-juego'];
            $categorias = $_POST['categorias'];
            $id_juego = $_POST['id_juego'];
            $carpeta_destino = 'imagenes';

            // Construir la ruta completa del archivo de destino
            $destino = $carpeta_destino . '/' . $nombre_archivo;

            // Mover el archivo subido a la carpeta de destino
            if (move_uploaded_file($archivo_temporal, $destino)) {
                // Guardar el nombre del archivo en la base de datos
                $this->JuegosModel->modificarJuego($nombre_archivo, $nombreJuego, $descJuego, $precioJuego, $categorias, $id_juego);
                header('Location: admin/juegos');
            } else {
                // Error al mover el archivo
                echo "Error al subir el archivo.";
            }
        }
    }
    public function panelAdmin($params = null)
    {
        $juegos = $this->JuegosModel->obtenerJuegos();
        $categorias = $this->CategoriasModel->obtenerCategorias();
        $this->defaultView->admin($params, $juegos, $categorias);
    }

    public function idJuegoEliminar()
    {
        if (isset($_POST['btn_eliminar'])) {
            $id = $_POST['btn_eliminar'];
            $imagen = $this->JuegosModel->obtenerImagen($id);
            $ruta = "imagenes/" . $imagen;
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
        $this->JuegosModel->eliminarJuego($id);
        header('Location: admin/juegos');
    }

    public function requestCategory()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (isset($_POST['agregar_categoria'])) {
                $this->insertarValoresCategoria();
            } elseif (isset($_POST['modificar_categoria'])) {
                $this->modificarValoresCategoria();
            } elseif (isset($_POST['categoria_eliminar'])) {
                $this->idCategoriaEliminar();
            }
        }
    }


    public function insertarValoresCategoria()
    {
        if (isset($_POST['categoria']) && !empty($_POST['categoria'])) {
            $categoria = $_POST['categoria'];
            $count = $this->CategoriasModel->verificarCategoria($categoria);
            if ($count < 1) {
                $this->CategoriasModel->insertarCategoria($categoria);
                header('Location: admin/categorias');
            } else {
                echo "La categoria ya existe";
            }
        }
    }

    public function modificarValoresCategoria()
    {
        if (isset($_POST['categoria']) && !empty($_POST['categoria']) && isset($_POST['id_categoria']) && isset($_POST['id_categoria'])) {
            $categoria = $_POST['categoria'];
            $id_categoria = $_POST['id_categoria'];
            $this->CategoriasModel->modificarCategoria($categoria, $id_categoria);
            header('Location: admin/categorias');
        }
    }

    public function idCategoriaEliminar()
    {
        if (isset($_POST['categoria_eliminar'])) {
            $id = $_POST['categoria_eliminar'];
            $this->CategoriasModel->eliminarCategoria($id);
            header('Location: admin/categorias');
        }
    }
}
