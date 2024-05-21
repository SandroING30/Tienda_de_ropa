<?php
class Categorias extends Controllers{
    public function __construct()
    {
        parent::__construct();
       
    }

    public function categorias(){
        $data['page_id'] = 3;
		$data['page_tag'] = "Ver Categorias";
		$data['page_title'] = "Categorias <small> Tienda </small>";
		$data['page_name'] = "categorias_tienda";
		$this->views->getView($this,"categorias",$data);

    }

    public function getCategorias(){
		$arrData = $this->model->selectCategorias();
		for ($i=0; $i < count($arrData); $i++) {

			$arrData[$i]['acciones'] = '<div class="text-center">
			<button type="button" name="btnEditRol" class="btn btn-primary btnEditRol" onClick="fntEditRol('.$arrData[$i]['id'].')" title="Editar"><i class="bi bi-pencil"></i></button>
			<button type="button" name="btnDelRol" class="btn btn-danger btnDelRol" onClick="fntDelRol('.$arrData[$i]['id'].')" title="Eliminar"><i class="bi bi-trash"></i></button>
			</div>';
		}
		echo json_encode($arrData,JSON_UNESCAPED_UNICODE);
		die();
			
	}
}