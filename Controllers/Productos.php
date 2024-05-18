<?php
class Productos extends Controllers{
    public function __construct()
    {
        parent::__construct();
        
    }

    public function productos(){
        $data['page_id'] = 3;
		$data['page_tag'] = "productos";
		$data['page_title'] = "Productos <small> Fendi Galoi </small>";
		$data['page_name'] = "productos_tienda";
		$this->views->getView($this,"productos",$data);
    }

}
    




?>