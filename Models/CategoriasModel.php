<?php 
class CategoriasModel extends Mysql{

    public function __construct()
    {
        parent::__construct();
        
    }

    public function selectCategorias(){
		$sql = "SELECT * FROM categoria";
		$request = $this->select_all($sql);
		return $request;
	}
}