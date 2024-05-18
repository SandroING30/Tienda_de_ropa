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
          </h1>
          <p>mas na productos</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="bi bi-house-door fs-6"></i></li>
          <li class="breadcrumb-item"><a href="<?=base_url();?>agregarproducto"><?=$data["page_title"];?></a></li>
        </ul>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <form id="formRo2" name="formRo2">
                  <input type="hidden" id="idProducto" name="idProducto" value="">
                  
                  <div class="mb-3">
                    <label  class="form-label" for="txtNombre">Nombre</label>
                    <input id="txtNombre" name="txtNombre" class="form-control" type="text" placeholder="Ingrese nombre" >
                  </div>

                  <div class="mb-3">
                      <label class="form-label" for="txtDescripcion">Descripción</label>
                      <textarea id="txtDescripcion" name="txtDescripcion" class="form-control" rows="4" placeholder="Ingrese descripción" ></textarea>
                  </div>


                  <div class="mb-3">
                          <label class="form-label" for="listCategoria">Categoria</label>
                          <select id="listCategoria" name="listCategoria" class="form-control" >
                            <option value="1">zapatilla</option>
                            <option value="0">ropa</option>
                          </select>
                  </div>

                  <div class="mb-3">
                          <label class="listSubcategoria" for="listSubcategoria">Sub Categoria</label>
                          <select id="listSubcategoria" name="listSubcategoria" class="form-control" >
                            <option >Botas</option>
                            <option >Chaquetas</option>
                            <option >Zapatillas Deportivas</option>
                          </select>
                  </div>
                

                  <div class="mb-3">
                    <label  class="form-label" for="txtPrecio">Precio</label>
                    <input id="txtPrecio" name="txtPrecio" class="form-control" type="number" step="0.01" min="0" >
                  </div>

                  <div class="mb-3">
                    <label  class="form-label" for="txtStock">Stock</label>
                    <input id="txtStock" name="txtStock" class="form-control" type="number" step="1" min="0" required >
                  </div>

                  <div class="mb-3">
                          <label class="form-label" for="listMarca">Marca</label>
                          <select id="listMarca" name="listMarca" class="form-control" >
                            <option >Gucci</option>
                            <option >Vlase</option>
                            <option >Prada</option>
                          </select>
                  </div>

                  <div class="mb-3">
                    <label  class="form-label" for="imagen">Imagen</label>
                    <input id="imagen" name="imagen" class="form-control" type="file"  accept="image" required >
                  </div>

                  <div class="mb-3">
                          <label class="form-label" for="listTalla">Talla</label>
                          <select id="listTalla" name="listTalla" class="form-control" >
                            <option >S</option>
                            <option >M</option>
                            <option >L</option>
                          </select>
                  </div>


                  <div class="tile-footer">
                      <button  id="btnActionForm" name="btnActionForm" class="btn btn-primary" type="submit">
                        <i class="bi bi-check-circle-fill me-2"></i>
                        <span id="btnText">Guardar</span>
                      </button>&nbsp;&nbsp;&nbsp;
                      <a class="btn btn-secondary" href="#" data-bs-dismiss="modal">
                        <i class="bi bi-x-circle-fill me-2"></i>Cancelar
                      </a>
                  </div>              
              </form>
              
            </div>
          </div>
        </div>
      </div>

      
    </main>
</div>  



<?php
footerAdmin();
?>