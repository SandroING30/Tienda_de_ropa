<?php 
class VerProductosModel extends Mysql{
    public $intIdproducto;
    public $strProducto;
    public $strDescripcion;
    public $strCategoria;
    public $strSubcategoria;
    public $floatPrecio;
    public $intStock;
    public $strMarca;
    public $strImagen;
    public $strTalla;

    public function __construct()
    {
        parent::__construct();
        
    }

    public function selectProductos(){
		//EXTRAE productos
		$sql = "SELECT * FROM producto";
		$request = $this->select_all($sql);
		return $request;
	}

    /*public function insertProducto(string $producto, string $descripcion, string $categoria, string $subcategoria, float $precio, int $stock, string $marca, string $talla ){
        $return="";
        $this-> strProducto=$producto ; 
        $this-> strDescripcion=$descripcion; 
        $this-> strCategoria=$categoria; 
        $this-> strSubcategoria=$subcategoria; 
        $this-> floatPrecio= $precio; 
        $this-> intStock=$stock; 
        $this-> strMarca = $marca; 
        //$this-> strImagen= $imagen;
        $this-> strTalla=$talla;

        $query_insert= "INSERT INTO producto (nombre,imagenes,stock,precio,categoria_id,marca_id,descripcion,subcategoria_id,tallas_seleccionada) VALUES(?,?,?,?,?,?,?,?,?)";
        $arrData= array($this-> strProducto,$this->intStock,$this->floatPrecio, $this->strCategoria, $this->strMarca, $this->strDescripcion, $this->strSubcategoria, $this->strTalla);
        $request_insert = $this->insert($query_insert,$arrData);
	    $return = $request_insert;
        return $return; */



    }



}
?>