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
        

    }


?>