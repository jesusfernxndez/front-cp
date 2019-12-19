<template>
  <div id="paddingAncho" class="py-2 sectionCenter">
    <div class="container-fluid py-5">
      <div class="row">
        <div class="col-sm">
          <h1 class="text-center" style="color: white;">
            Estás a un solo paso de simplificar tu negocio
          </h1>
          <hr
            style="width: 20%; border-color: white; border-top-width: 2px !important"
          />
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-sm text-right">
          <button
            type="button"
            class="btn btn-light btn-lg px-5"
            data-toggle="modal"
            data-target="#ModalCenterRegister"
          >
            Crear Cuenta
          </button>
        </div>
        <div class="col-sm text-left">
          <button
            type="button"
            class="btn btn-outline-light btn-lg px-5"
            data-toggle="modal"
            data-target="#ModalCenterIngresar"
          >
            Iniciar Sesión
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.btn {
  border-radius: 30px;
  font-weight: bold;
}
.btn.btn-light,
.btn.btn-outline-light:hover {
  color: #46e6aa;
}
.btn.btn-outline-light {
  font-weight: bold;
  color: white;
}
.sectionCenter {
  background: #46e5ab; /* fallback for old browsers */
  background: -webkit-linear-gradient(
    to bottom,
    #46e5ab,
    #46a4d0
  ); /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(
    to bottom,
    #46e5ab,
    #46a4d0
  ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  clip-path: polygon(0% 0%, 100% 5%, 100% 100%, 0% 95%);
}
@media only screen and (max-width: 585px) {
  .sectionCenter .btn {
    width: 100% !important;
    margin-top: 5px !important;
  }
}
</style>
