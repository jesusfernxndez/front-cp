<template>
  <div>
    <div id="paddingAncho" class="cont paddingTop">
      <div class="row animated fadeInLeft pt-5">
        <div class="col-lg-6 p-3">
          <h1 class="display-4 text-white font-weight-bold">
            Desarrollo Web
          </h1>
          <div class="row my-5 text-white">
            <div class="col-sm w-100">
              <h3>
                Confíe la actualización o la creación de próximo sitio Web
                profesional y moderno en nosotros.
              </h3>
            </div>
          </div>
          <div class="row">
            <div class="col-lg px-1">
              <a
                href="#one"
                class="btn btn-warning btn-block btn-lg berPlan mb-3"
              >
                Ver Portafolio
                <i class="fas fa-angle-double-down"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-lg-6 p-2">
          <div>
            <img src="@/assets/portada3.png" class="d-block w-100" alt="..." />
          </div>
        </div>
      </div>
    </div>
    <div id="paddingAncho" class="mt-5">
      <h1 class="text-center mt-5" id="one">
        Escoje uno de nuestros Proyectos listos para usar
      </h1>
      <h6 class="text-center">
        Puede escojer el sitio web que mejor se adapte a sus necesidades
      </h6>
      <hr
        style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
      />
      <div class="container">
        <div class="alert alert-danger" role="alert" v-if="alertLogin">
          Las compras en esta web no están habilidatas para: Administrador y
          Personas sin cuenta.
        </div>

        <div class="row">
          <div
            class="col-sm mt-2 px-4"
            v-for="sitio in portafolio"
            :key="sitio.id"
          >
            <div class="card mx-auto">
              <div class="card-body text-center">
                <h1 class="card-title font-weight-bold">{{ sitio.nombre }}</h1>
                <h4>S/{{ sitio.precio }}.00 *</h4>
                <button
                  class="btn btn-block mt-4"
                  :class="{
                    'btn-danger': alertLogin,
                    'btn-primary': !alertLogin
                  }"
                  :disabled="alertLogin"
                  @click="comprar(sitio)"
                >
                  Comprar
                </button>
                <small v-if="alertLogin" class="text-danger"
                  ><em
                    ><u
                      >El boton se activará cuando inicie sesión como cliente
                      normal *</u
                    ></em
                  ></small
                >
                <p class="mt-5">{{ sitio.descripcion }}</p>
                <a
                  :href="sitio.link_demo"
                  target="blank"
                  class="btn btn-outline-warning btn-block"
                  >Ver Demo</a
                >
              </div>
            </div>
          </div>
        </div>
        <h1 class="text-center mt-5">Nos adaptamos a tus necesidades</h1>
        <h6 class="text-center">
          Mediante este servicio podemos realizar adaptaciones o crear tu sitio
          web desde 0 y personalizarlo a tu manera con los requerimientos y/o
          características que desees.
        </h6>
        <hr
          style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
        />
        <div class="row">
          <div class="col-xl">
            <div class="alert alert-primary" role="alert">
              Rellena este formulario y nos pondremos en contácto con usted para
              indicarle los detalles del servicio.
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
                <label for="inputnumero"
                  >Número de celular / Teléfono fijo</label
                >
                <input type="number" class="form-control" id="inputnumero" />
              </div>
              <div class="form-group">
                <label for="comentario">Comentanos algunos previos.</label>
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
        <h1 class="text-center mt-5">Algunas opciones de balance de dinero</h1>
        <h6 class="text-center">
          Para darle una orientación, puede seleccionar entre las siguientes
          opciones y verá un aproximado de costo.
        </h6>
        <hr
          style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
        />
        <div class="row mt-5">
          <div class="col-xl">
            <div class="row">
              <div class="col-xl-2 text-center">
                <i class="fab fa-internet-explorer fa-2x"></i>
              </div>
              <div class="col-xl">
                <p class="text-uppercase font-weight-bold text-justify">
                  <u> Nombre de dominio GRATUITO para el primer año</u>
                </p>
                <p class="text-justify">
                  Se incluye un año de registro de dominio con cada nuevo plan.
                  Después del año inicial, el dominio puede renovarse a precio
                  de mercado.
                </p>
              </div>
            </div>
          </div>
          <div class="col-xl">
            <div class="row">
              <div class="col-xl-2 text-center">
                <i class="fas fa-shield-alt fa-2x"></i>
              </div>
              <div class="col-xl">
                <p class="text-uppercase font-weight-bold text-justify">
                  <u> Certificado SSL gratuito para su sitio web</u>
                </p>
                <p class="text-justify">
                  Un SSL proporciona una conexión segura a su sitio web, permite
                  el comercio electrónico y protege la información personal para
                  mayor seguridad.
                </p>
              </div>
            </div>
          </div>
          <div class="col-xl">
            <div class="row">
              <div class="col-xl-2 text-center">
                <i class="fas fa-thumbs-up fa-2x"></i>
              </div>
              <div class="col-xl">
                <p class="text-uppercase font-weight-bold text-justify">
                  <u> 30 días de garantía de devolución de dinero</u>
                </p>
                <p class="text-justify">
                  Si no está satisfecho por algún motivo dentro de los primeros
                  30 días de servicio, puede cancelar para obtener un reembolso
                  completo de las tarifas de alojamiento; Se aplican
                  restricciones.
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="row mt-2"></div>
      </div>
    </div>
    <sectionCenter v-if="mostrarButtonNoLogin" />
  </div>
</template>
<script>
import sectionCenter from "@/components/SectionCenter.vue";
export default {
  components: {
    sectionCenter
  },
  data() {
    return {
      portafolio: Array,
      fecha_compra: new Date()
    };
  },
  methods: {
    toast(toaster, append = false, title, message, variant) {
      this.counter += 1;
      this.$bvToast.toast(message, {
        title,
        toaster,
        solid: true,
        variant,
        appendToast: append
      });
    },
    comprar(sitio) {
      if (localStorage.getItem("tokenUser")) {
        const userdata = JSON.parse(localStorage.getItem("dataUserProfile"));
        let fecha_actual = new Date();
        fecha_actual =
          fecha_actual.getFullYear() +
          "-" +
          (fecha_actual.getMonth() + 1) +
          "-" +
          fecha_actual.getDate();
        this.fecha_compra = fecha_actual;
        this.axios({
          method: "post",
          url: "/newCompraSitioWeb",
          data: {
            dni: userdata.dni,
            id_sitio: sitio.id,
            nombre_sitio: sitio.nombre,
            fecha_compra: this.fecha_compra,
            precio: sitio.precio
          },
          headers: {
            authorization: localStorage.getItem("tokenUser")
          }
        }).then(res => {
          if (res.data.success) {
            this.toast(
              "b-toaster-bottom-right",
              true,
              "Felicidades",
              res.data.message,
              "success"
            );
          }
        });
      } else {
        this.toast(
          "b-toaster-bottom-right",
          true,
          "Hubo un problema",
          "el administrador y las personas sin cuenta no pueden comprar en este sitio web.",
          "danger"
        );
      }
    }
  },
  created() {
    this.axios({
      method: "get",
      url: "/showPortafolioWeb"
    }).then(res => {
      this.portafolio = res.data;
    });
  },
  computed: {
    mostrarButtonNoLogin() {
      if (
        localStorage.getItem("tokenUser") ||
        localStorage.getItem("tokenAdmin")
      ) {
        return false;
      }
      return true;
    },
    alertLogin() {
      if (localStorage.getItem("tokenUser")) {
        return false;
      }
      return true;
    }
  }
};
</script>
<style scoped>
.berPlan {
  border-radius: 30px;
  font-weight: bold;
}
.cont {
  background: #00c9ff; /* fallback for old browsers */
  background: -webkit-linear-gradient(
    to top,
    #92fe9d,
    #00c9ff
  ); /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(
    to top,
    #92fe9d,
    #00c9ff
  ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
</style>
