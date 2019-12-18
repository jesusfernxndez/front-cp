<template>
  <div class="paddingTop animated fadeInUp">
    <div id="paddingAncho">
      <h1 class="mt-5 text-center font-weight-bold">
        Ponte en contácto con nosotros
      </h1>

      <hr
        style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
      />
      <div class="row mx-2">
        <div class="col-sm-8 container">
          <div class="alert alert-success" role="alert">
            Mediante este formulario te puedes poner en contácto con nosotros y
            expresarnos tu libre opinión. Recuerda que tus opiniones nos ayudan
            a crecer cada vez más
          </div>
          <form class="mx-auto">
            <div class="form-group">
              <label for="exampleInputEmail1">Correo Electrónico</label>
              <input
                type="email"
                class="form-control"
                id="exampleInputEmail1"
                aria-describedby="emailHelp"
                required
              />
              <small id="emailHelp" class="form-text text-muted"
                >Este apartado es indispensable *</small
              >
            </div>
            <div class="form-group">
              <label for="inputFullname">Nombres Completos</label>
              <input type="text" class="form-control" id="inputFullname" />
            </div>
            <div class="form-group">
              <label for="inputnumero">Número de celular / Teléfono fijo</label>
              <input type="number" class="form-control" id="inputnumero" />
            </div>
            <div class="form-group">
              <label for="comentario">Comentarios</label>
              <textarea
                class="form-control"
                id="comentario"
                cols="30"
                rows="10"
              ></textarea>
            </div>
            <button type="submit" class="btn btn-primary">
              Envíar mensaje
            </button>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>
