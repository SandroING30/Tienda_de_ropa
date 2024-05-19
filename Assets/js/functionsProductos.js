var tableProductos;
document.addEventListener('DOMContentLoaded', function(){

    tableProductos = $('#tableProductos').dataTable( {
		"aProcessing":true,
		"aServerSide":true,
        "language": {
            url: " "+base_url+"Assets/js/es-ES.json",
        },
        "ajax":{
            "url": " "+base_url+"VerProducto/getProductos",
            "dataSrc":""
        },
        "columns":[
            {"data":"id"},
            {"data":"nombr"},
            {"data":"imagenes"},
            {"data":"stock"},
            {"data":"precio"},
            {"data":"categoria_id"},
            {"data":"marca_id"},
            {"data":"descripcion"},
            {"data":"created_at"},
            {"data":"updated_at"},
            {"data":"subcategoria_id"},
            {"data":"tallas_selecionadas"}
        ],
        "resonsieve":true,
        "bDestroy": true,
        "iDisplayLength": 10,
        "order":[[0,"desc"]]  
    });

    var formRo2 = document.querySelector("#formRo2");
    formRo2.onsubmit = function(e) {
        e.preventDefault();

        var intIdproducto = document.querySelector('#idproducto').value;
        var strNombre = document.querySelector('#txtNombre').value;
        var strDescripcion = document.querySelector('#txtDescripcion').value;        
        var strCategoria = document.querySelector('#listCategoria').value;  
        var strSubcategoria = document.querySelector('#listSubcategoria').value;  
        var floatPrecio = document.querySelector('#txtPrecio').value;  
        var strStock = document.querySelector('#txtStock').value;  
        var strMarca = document.querySelector('#listMarca').value;  
        var Imagen = document.querySelector('#imagen').value;  
        var strTalla = document.querySelector('#listTalla').value;  
       
        if(strNombre == '' || strDescripcion == '' || strCategoria == '' || strSubcategoria == '' || floatPrecio == '' || strStock == '' || strMarca == '' || imagen == '' || strTalla == ''){
            
            Swal.fire({
                title:"Atención", 
                text:"Todos los campos son obligatorios." , 
                icon:"error"});
            return false;
        }

        var request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
        var ajaxUrl = base_url+'AgregarProducto/setAgregarProducto'; 
        var formData = new FormData(formRo2);
        request.open("POST",ajaxUrl,true);
        request.send(formData);
        request.onreadystatechange = function(){
           if(request.readyState == 4 && request.status == 200){
                var objData = JSON.parse(request.responseText);
                if(objData.status)
                { 
                    $('FormRo2').modal("hide");
                    formRol.reset();
                    Swal.fire({
                        title:"ENHORABUENA", 
                        text:objData.msg , 
                        icon:"success"});
                    tableProductos.api().ajax.reload();
                }else{
                    Swal.fire({
                        title:"Error", 
                        text: objData.msg , 
                        icon:"error"});
                }              
            } 
            return false;
        }
    }

}) 