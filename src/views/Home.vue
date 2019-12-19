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
      <div class="container">
        <div class="row">
          <div class="col-lg mt-2">
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
          <div class="col-lg mt-2">
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
                  Usted tiene control total sobre cómo se ve y funciona su
                  sitio. Cada enlace, imagen, bloque, característica y módulo se
                  puede personalizar, modificar y reorganizar.
                </p>
                <a href="#" class="btn btn-primary btn-block">Ver más ...</a>
              </div>
            </div>
          </div>
          <div class="col-lg mt-2">
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
                  Nos Adaptamos a ti
                </h5>
                <p class="card-text">
                  Diseño de sitio web 100% responsivos y adaptables a cualquier
                  tamaño de pantalla o dispositivo móvil. Utilizando animaciones
                  e interfaces modernas y de alta calidad.
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
    <sectionCenter v-if="mostrarButtonNoLogin" />
  </div>
</template>

<script>
// @ is an alias to /src
import SectionTop from "@/components/SectionTop.vue";
import SectionCenter from "@/components/SectionCenter.vue";
export default {
  name: "home",
  computed: {
    mostrarButtonNoLogin() {
      if (
        localStorage.getItem("tokenUser") ||
        localStorage.getItem("tokenAdmin")
      ) {
        return false;
      }
      return true;
    }
  },
  components: {
    SectionTop,
    SectionCenter
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
#subtitle {
  color: #46a2d0;
}
</style>
