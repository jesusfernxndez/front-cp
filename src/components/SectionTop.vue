<template>
  <div id="xd">
    <div class="paddingTop sectionTop" id="paddingAncho">
      <div class="row animated fadeInUp">
        <div class="col-sm-6 p-3">
          <h1 class="display-4 text-white font-weight-bold mt-5">
            Todo lo que buscas en un solo Lugar
          </h1>
          <div class="row my-5 text-white">
            <div class="col-sm w-100">
              <ul>
                <li><h5>Hosting 100% Profesional.</h5></li>
                <li><h5>Creación de sitios Web responsivos.</h5></li>
              </ul>
            </div>
          </div>
          <div class="row">
            <div class="col-sm px-1">
              <button
                v-if="mostrarButton"
                type="button"
                class="btn btn-lg btn-light btn-block"
                data-toggle="modal"
                data-target="#ModalCenterRegister"
              >
                REGISTRARSE
              </button>
              <router-link
                to="/admin"
                v-if="!mostrarButton"
                class="btn btn-lg btn-outline-light btn-block"
                >Ir al Dashboard</router-link
              >
            </div>
            <div class="col-sm px-1">
              <button
                type="button"
                v-if="mostrarButton"
                class="btn btn-lg btn-outline-light btn-block"
                data-toggle="modal"
                data-target="#ModalCenterIngresar"
              >
                INGRESAR ->
              </button>
            </div>
          </div>
        </div>
        <div class="col-sm-6 p-3 pb-5">
          <div
            id="carouselExampleSlidesOnly"
            class="carousel slide"
            data-ride="carousel"
          >
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img
                  src="../assets/banner/img-1.png"
                  class="d-block w-100"
                  alt="..."
                />
              </div>
              <div class="carousel-item">
                <img
                  src="../assets/banner/img-2.png"
                  class="d-block w-100"
                  alt="..."
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  computed: {
    mostrarButton() {
      if (localStorage.getItem("token")) {
        return false;
      }
      return true;
    }
  }
};
</script>
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
#xd {
  background: #46e6aa;
  background: -webkit-linear-gradient(to bottom, #46e6aa, #46a2d0);
  background: linear-gradient(to bottom, #46e6aa, #46a2d0);
}
#xd {
  clip-path: polygon(0% 0%, 100% 0%, 100% 95%, 0% 100%);
}
@media only screen and (max-width: 600px) {
  .btn {
    margin-top: 10px !important;
  }
}
</style>
