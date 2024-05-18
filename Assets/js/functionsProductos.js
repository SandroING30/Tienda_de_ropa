document.addEventListener('DOMContentLoaded', function(){

    // Manejar el envío del formulario para agregar un producto
    var formProducto = document.querySelector("#formRo2");
    formProducto.addEventListener('submit', function(e) {
        e.preventDefault();

        // Obtener los valores del formulario
        var formData = new FormData(formProducto);

        // Enviar los datos al servidor mediante AJAX
        var request = new XMLHttpRequest();
        var ajaxUrl = base_url + 'AgregarProducto/setProductos';
        request.open("POST", ajaxUrl, true);
        request.send(formData);
        request.onreadystatechange = function() {
            if (request.readyState == 4 && request.status == 200) {
                var objData = JSON.parse(request.responseText);
                if (objData.status) {
                    // Limpiar el formulario
                    formProducto.reset();
                    // Mostrar mensaje de éxito
                    Swal.fire({
                        title: "Producto agregado",
                        text: objData.msg,
                        icon: "success"
                    });
                } else {
                    // Mostrar mensaje de error
                    Swal.fire({
                        title: "Error",
                        text: objData.msg,
                        icon: "error"
                    });
                }
            }
        };
    });
});



/* document.addEventListener('DOMContentLoaded', function(){

    var formRo2 = document.querySelector("#formRo2");
    formRo2.onsubmit = function(e) {
        e.preventDefault();

        var intIdproducto = document.querySelector('#idproducto').value;
        var strNombre = document.querySelector('#txtNombre').value;
        var strDescripcion = document.querySelector('#txtDescripcion').value;        
        if(strNombre == '' )
        {
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
                    $('#modalFormRo2').modal("hide");
                    formRol.reset();
                    Swal.fire({
                        title:"ENHORABUENA", 
                        text:objData.msg , 
                        icon:"success"});
                    tableRoles.api().ajax.reload();
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

}) /**/ 