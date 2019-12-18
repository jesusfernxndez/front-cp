<template>
  <div>
    <SectionTop />
    <div class="paddingTop" id="paddingAncho">
      <h1 class="text-center font-weight-bold" id="subtitle">
        Menor precio, mayores prestaciones
      </h1>
      <hr
        style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
      />
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm mt-2">
            <div class="card container" style="width: 100%;">
              <img
                src="@/assets/card-home/img-1.png"
                class="card-img-top mt-3"
                alt="..."
              />
              <div class="card-body">
                <h5
                  class="card-title border-bottom border-secondary font-weight-bold pb-2"
                >
                  Hosting 100% profesional
                </h5>
                <p class="card-text">
                  Más que un servicio de hosting, somos un aliado valioso para
              nuestros clientes. Estamos presentes las 24 horas al día para
              solucionar cualquier duda o problema de forma inmediata.
                </p>
                <a href="#" class="btn btn-primary btn-block">Ver más ...</a>
              </div>
            </div>
          </div>
          <div class="col-sm mt-2">
            <div class="card container" style="width: 100%;">
              <img
                src="@/assets/card-home/img-2.png"
                class="card-img-top mt-3"
                alt="..."
              />
              <div class="card-body">
                <h5
                  class="card-title border-bottom border-secondary font-weight-bold pb-2"
                >
                  Portafolio de Sitios Web
                </h5>
                <p class="card-text">
                  Usted tiene control total sobre cómo se ve y funciona su sitio.
              Cada enlace, imagen, bloque, característica y módulo se puede
              personalizar, modificar y reorganizar.
                </p>
                <a href="#" class="btn btn-primary btn-block">Ver más ...</a>
              </div>
            </div>
          </div>
          <div class="col-sm mt-2">
            <div class="card container" style="width: 100%;">
              <img
                src="@/assets/card-home/img-3.jpg"
                class="card-img-top mt-3"
                alt="..."
              />
              <div class="card-body">
                <h5
                  class="card-title border-bottom border-secondary font-weight-bold pb-2"
                >
                  Nos Adaptamos a tus requerimientos
                </h5>
                <p class="card-text">
                  Diseño de sitio web 100% responsivos y adaptables a cualquier
              tamaño de pantalla o dispositivo móvil. Utilizando animaciones e
              interfaces modernas y de alta calidad.
                </p>
                <a href="#" class="btn btn-primary btn-block">Ver más ...</a>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="row mt-5">
            <div class="col-xl">
              <h1 class="text-center font-weight-bold" style="color: #46A0D2">
                Aceptamos todos los medios de pago
              </h1>
              <hr
                style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
              />
            </div>
          </div>
          <div class="row">
            <div class="col-xl">
              <img
                src="@/assets/medios-de-pago.png"
                class="w-100 p-5"
                style="opacity: 50%"
              />
            </div>
          </div>
        </div>
      </div>
    </div>




    <div id="paddingAncho" class="py-2 sectionTreeHome">
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
              data-target="#ModalCenterIngresar"
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
              Iniciar Sesión ►
            </button>
          </div>
        </div>
      </div>
    </div>




  </div>
</template>

<script>
// @ is an alias to /src
import SectionTop from "@/components/SectionTop.vue";

export default {
  name: "home",
  components: {
    SectionTop
  },
  methods: {
    handleScroll: function() {
      if (window.$(window).scrollTop() > 10) {
        window.$(".navbar").addClass("bg-white border-bottom");
      } else {
        window.$(".navbar").removeClass("bg-white border-bottom");
      }
    }
  },

  created: function() {
    window.addEventListener("scroll", this.handleScroll);
  },
  destroyed: function() {
    window.removeEventListener("scroll", this.handleScroll);
  }
};
</script>
<style scoped>
.sectionTreeHome {
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
#subtitle {
  color: #46a2d0;
}
@media only screen and (max-width: 585px) {
  .sectionTreeHome .btn {
    width: 100% !important;
    margin-top: 5px !important;
  }
}
</style>
