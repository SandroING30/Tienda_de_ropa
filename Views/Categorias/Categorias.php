
<?= 
  headerAdmin();
  navAdmin();
  getModal("ModalsCategorias", $data);
?>
<div id="contentAjax">
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1>
            <i class="bi bi-speedometer"></i> <?=$data["page_title"];?>
            <button class="btn btn-primary" type="button" onclick="openModal();"><i class="bi bi-plus-lg"></i> Nuevo</button>
          </h1>
          <p>Gestión de categorias</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="bi bi-house-door fs-6"></i></li>
          <li class="breadcrumb-item"><a href="<?=base_url();?>categorias"><?=$data["page_title"];?></a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <div class="table-responsive">
                <table class="table table-hover table-bordered" id="tableCategorias">
                  <thead>
                    <tr>
                      <th>IdCategoria</th>
                      <th>Nombre Categoria</th>
                      <th>Creado en: </th>
                      <th>Actualizado en:</th>
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
     <!-- Page specific javascripts-->
    
    

<?=footerAdmin();?>
   
    