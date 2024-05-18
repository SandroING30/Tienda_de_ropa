<?php
class AgregarProducto extends Controllers{
    public function __construct()
    {
        parent::__construct();
        
    }

    public function agregarproducto(){
        $data['page_id'] = 3;
		$data['page_tag'] = "agregar_producto";
		$data['page_title'] = "Agregar <small> Producto </small>";
		$data['page_name'] = "Agregar_productos_tienda";
		$this->views->getView($this,"agregarproducto",$data);
    }


    public function setProductos(){
        $strProducto = ($_POST['txtNombre']);
        $strDescripcion = ($_POST['txtDescripcion']);
        $strCategoria= ($_POST['listCategoria']);
        $strSubcategoria = ($_POST['listSubcategoria']);
        $floatPrecio= ($_POST['txtPrecio']);
        $intStock = ($_POST['txtStock']);
        $strMarca = ($_POST['listMarca']);
        //$strImagen= ($_FILES['imagen']); 
        $strTalla= ($_POST['listTalla']);


        if (empty($strProducto) || empty($strDescripcion) || empty($strCategoria) || empty($strSubcategoria) || empty($floatPrecio) || empty($intStock) || empty($strMarca) || empty($strTalla)) {
            die(json_encode(['success' => false, 'message' => 'Todos los campos son obligatorios.']));
        }


        //Crear
		$request_producto = $this->model->insertProducto($strProducto ,$intStock,$floatPrecio, $strCategoria, $strMarca,$strDescripcion,$strSubcategoria,$strTalla);
		
        if ($request_producto) {
            die(json_encode(['success' => true, 'message' => 'Producto agregado correctamente.']));
        } else {
            die(json_encode(['success' => false, 'message' => 'Error al agregar el producto.']));
        }

    }


    /*public function guardarproducto(){
        $producto = $_POST['txtNombre'];
        $descripcion = $_POST['txtDescripcion'];
        $categoria = $_POST['listCategoria'];
        $subcategoria = $_POST['listSubcategoria'];
        $precio = $_POST['txtPrecio'];
        $stock = $_POST['txtStock'];
        $marca = $_POST['listMarca'];
        $imagen = $_FILES['imagen']['name']; 
        $talla = $_POST['listTalla'];

        // Crear una instancia del modelo AgregarProductoModel
        $agregarProductoModel = new AgregarProductoModel();

        // Llamar al método insertProducto para insertar el producto en la base de datos
        $resultado = $agregarProductoModel->insertProducto($producto, $descripcion, $categoria, $subcategoria, $precio, $stock, $marca, $imagen, $talla);

        // Manejar la respuesta (puedes redirigir al usuario, mostrar un mensaje, etc.)
        if ($resultado) {
            echo json_encode(array('success' => true, 'message' => 'Producto agregado correctamente'));
        } else {
            echo json_encode(array('success' => false, 'message' => 'Error al agregar el producto'));
        }
    } */

}
?>