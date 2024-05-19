<?=
headerAdmin();
navAdmin();
?>
<div id="contentAjax">
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1>
            <i class="bi bi-speedometer"></i> <?=$data["page_title"];?>
          </h1>
          <p>mas na productos</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="bi bi-house-door fs-6"></i></li>
          <li class="breadcrumb-item"><a href="<?=base_url();?>verproducto"><?=$data["page_title"];?></a></li>
        </ul>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <div class="table-responsive">
                <table class="table table-hover table-bordered" id="tableProductos">
                  <thead>
                    <tr>
                      <th>IdProd.</th>
                      <th>Nombre</th>
                      <th>Descripción</th>
                      <th>Categoria</th>
                      <th>Subcategoria</th>
                      <th>Precio</th>
                      <th>Stock</th>
                      <th>Marca</th>
                      <th>Imagen</th>
                      <th>Talla</th>
                      <th>Fecha de creacion</th>
                      <th>Fecha de actualización</th>
                      <th>Acciones</th>
                    </tr>
                  </thead>
                  <tbody>
                    
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>

      
    </main>
</div>  

<?=
footerAdmin();
?> 