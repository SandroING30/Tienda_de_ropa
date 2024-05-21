var tableCategorias;

document.addEventListener('DOMContentLoaded', function(){

	tableCategorias = $('#tableCategorias').dataTable( {
		"aProcessing":true,
		"aServerSide":true,
        "language": {
            url: " "+base_url+"Assets/js/es-ES.json",
        },
        "ajax":{
            "url": " "+base_url+"Categorias/getCategorias",
            "dataSrc":""
        },
        "columns":[
            {"data":"id"},
            {"data":"nombre"},
            {"data":"created_at"},
            {"data":"updated_at"},
            {"data":"acciones"}
        ],
        "resonsieve":true,
        "bDestroy": true,
        "iDisplayLength": 10,
        "order":[[0,"desc"]]  
    });
     
    
    
});

tableCategorias = $('#tableCategorias').dataTable( )
function openModal(){   
    document.querySelector('#idCategoria').value ="";
    document.querySelector('.modal-header').classList.replace("headerUpdate", "headerRegister");
    document.querySelector('#btnActionForm').classList.replace("btn-info", "btn-primary");
    document.querySelector('#btnText').innerHTML ="Guardar";
    document.querySelector('#titleModal').innerHTML = "Nuevo Rol";
    document.querySelector("#formCategorias").reset();
	$('#modalFormRo3').modal('show');
}