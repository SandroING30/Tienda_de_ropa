<?php
headerAdmin();
navAdmin();
?>
  <div id="contentAjax">
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1>
            <i class="bi bi-speedometer"></i> <?=$data["page_title"];?>
            <button class="btn btn-primary" type="button" onclick="openModal();"><i class="bi bi-plus-lg"></i> Nuevo</button>
          </h1>
          <p>Gestión de productos</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="bi bi-house-door fs-6"></i></li>
          <li class="breadcrumb-item"><a href="<?=base_url();?>productos"><?=$data["page_title"];?></a></li>
        </ul>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <div class="table-responsive">
                <table class="table table-hover table-bordered" id="tableRoles">
                  <thead>
                    <tr>
                      <th>IdProd.</th>
                      <th>Nombre</th>
                      <th>Descripción</th>
                      <th>Categoria</th>
                      <th>Precio</th>
                      <th>Stock</th>
                      <th>Estado</th>
                      <th>Marca</th>
                      <th>Imagen</th>
                      <th>Talla</th>
                      <th>Acciones
                      <i class="fa-solid fa-pen-to-square" style="color: #FFD43B;"></i> 
                      <i class="fa-solid fa-trash" style="color: #d40c0c;"></i>
                      </th>
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



<?php
footerAdmin();
?>