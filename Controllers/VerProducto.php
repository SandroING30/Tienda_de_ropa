<?php
class VerProducto extends Controllers{
    public function __construct()
    {
        parent::__construct();
       
    }

    public function verproducto(){
        $data['page_id'] = 3;
		$data['page_tag'] = "Ver Producto";
		$data['page_title'] = "Ver <small> Productos</small>";
		$data['page_name'] = "Ver_producto";
		$this->views->getView($this,"verproducto",$data);

    }


    public function getProductos(){
		$arrData = $this->model->selectProductos();
		for ($i=0; $i < count($arrData); $i++) {
            $arrData[$i]['acciones'] = '<div class="text-center">
			<button type="button" name="btnEditRol" class="btn btn-primary btnEditRol" onClick="fntEditRol('.$arrData[$i]['idrol'].')" title="Editar"><i class="bi bi-pencil"></i></button>
			<button type="button" name="btnDelRol" class="btn btn-danger btnDelRol" onClick="fntDelRol('.$arrData[$i]['idrol'].')" title="Eliminar"><i class="bi bi-trash"></i></button>
			</div>';


            /* $producto['imagenes'] = '<img src="' . base_url() . 'Assets/images/uploads/' . $producto['imagenes'] . '" alt="Imagen" height="50">';
            $producto['idProd'] = $producto['id'];
            $producto['nombre'] = $producto['nombr'];
            $producto['stock'] = $producto['stock'];
            $producto['precio'] = $producto['precio'];
            $producto['categoria_id'] = $producto['categoria_id'];
            $producto['marca_id'] = $producto['marca_id'];
            $producto['descripcion'] = $producto['descripcion'];
            $producto['created_at'] = $producto['created_at'];
            $producto['updated_at'] = $producto['updated_at'];
            $producto['subcategoria_id'] = $producto['subcategoria_id'];
            $producto['tallas_selecionadas'] = $producto['tallas_selecionadas']; */
		}
		echo json_encode($arrData,JSON_UNESCAPED_UNICODE);
		die();	
	}
}  


?>