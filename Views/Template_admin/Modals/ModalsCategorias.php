<div class="modal fade" id="modalFormRo3" tabindex="-1"  role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header headerRegister">
            <h5 class="modal-title" id="titleModal"> Nueva Categoria</h5>
            <button type="button" class="btn-close" name="btn-close"" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form id="formCategorias" name="formRo3">
                  <input type="hidden" id="idCategoria" name="idCategoria" value="">
                  
                  <div class="mb-3">
                    <label  class="form-label" for="txtCategoria">Nombre</label>
                    <input id="txtCategoria" name="txtCategoria" class="form-control" type="text" placeholder="Ingrese nombre de la categoria" >
                  </div>

                  <div class="mb-3">
                      <label class="form-label" for="imagen">Imagen</label>
                      <textarea id="imagen" name="imagen" class="form-control" rows="4" placeholder="" ></textarea>
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
