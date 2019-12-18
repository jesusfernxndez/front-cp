<template>
  <div>
    <div id="paddingAncho" class="cont paddingTop">
      <div class="row animated fadeInLeft pt-5">
        <div class="col-sm-6 p-3">
          <h1 class="display-4 text-white font-weight-bold">
            Hosting Dedicado
          </h1>
          <div class="row my-5 text-white">
            <div class="col-sm w-100">
              <h3>
                Para sitios web que requieren lo último en rendimiento,
                seguridad y control.
              </h3>
            </div>
          </div>
          <div class="row">
            <div class="col-sm px-1">
              <a
                href="#one"
                class="btn btn-warning btn-block btn-lg berPlan mb-3"
              >
                Ver Planes
                <i class="fas fa-angle-double-down"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 p-2">
          <div>
            <img src="@/assets/portada2.png" class="d-block w-100" alt="..." />
          </div>
        </div>
      </div>
    </div>
    <div id="paddingAncho" class="mt-5">
      <h1 class="text-center mt-5" id="one">Escoje uno de nuestros Planes</h1>
      <h6 class="text-center">
        Puede escojer el plan que mas se adapte a sus necesidades
      </h6>
      <hr
        style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
      />
      <div class="alert alert-danger" role="alert" v-if="alertLogin">
        Usted debe iniciar Sesión para poder realizar compras en esta Web
      </div>
      <div class="row">
        <div class="col-xl mt-2 px-4">
          <div class="card mx-auto">
            <div class="card-body text-center">
              <h1 class="card-title font-weight-bold">Estándar</h1>
              <h4>S/150.00 / mes *</h4>
              <button
                class="btn btn-block mt-4"
                :class="{
                  'btn-danger': alertLogin,
                  'btn-primary': !alertLogin
                }"
                :disabled="alertLogin"
              >
                Adquirir
              </button>
              <small v-if="alertLogin" class="text-danger"
                ><em
                  ><u>
                    El boton de compra se activará cuando inicie sesión *</u
                  ></em
                ></small
              >
              <ul class="list-group list-group-flush mt-3">
                <li class="list-group-item">4 núcleos a 2.3 GHz</li>
                <li class="list-group-item">
                  500GB de almacenamiento (reflejado)
                </li>
                <li class="list-group-item">4 GB de RAM</li>
                <li class="list-group-item">5 TB de ancho de banda</li>
                <li class="list-group-item">3 direcciones IP</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-xl mt-2 px-4">
          <div class="card mx-auto">
            <div class="card-body text-center">
              <h1 class="card-title font-weight-bold">Mejorado</h1>
              <h4>S/250.00 / mes *</h4>
              <button
                class="btn btn-block mt-4"
                :class="{
                  'btn-danger': alertLogin,
                  'btn-primary': !alertLogin
                }"
                :disabled="alertLogin"
              >
                Adquirir
              </button>
              <small v-if="alertLogin" class="text-danger"
                ><em
                  ><u>
                    El boton de compra se activará cuando inicie sesión *</u
                  ></em
                ></small
              >
              <ul class="list-group list-group-flush mt-3">
                <li class="list-group-item">4 núcleos a 2.5 GHz</li>
                <li class="list-group-item">
                  1TB de almacenamiento (reflejado)
                </li>
                <li class="list-group-item">8 GB de RAM</li>
                <li class="list-group-item">10 TB de ancho de banda</li>
                <li class="list-group-item">4 direcciones IP</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-xl mt-2 px-4">
          <div class="card mx-auto">
            <div class="card-body text-center">
              <h1 class="card-title font-weight-bold">Premium</h1>
              <h4>S/2500.00 / año *</h4>
              <button
                class="btn btn-block mt-4"
                :class="{
                  'btn-danger': alertLogin,
                  'btn-primary': !alertLogin
                }"
                :disabled="alertLogin"
              >
                Adquirir
              </button>
              <small v-if="alertLogin" class="text-danger"
                ><em
                  ><u>
                    El boton de compra se activará cuando inicie sesión *</u
                  ></em
                ></small
              >
              <ul class="list-group list-group-flush mt-3">
                <li class="list-group-item">4 núcleos a 3.3 GHz</li>
                <li class="list-group-item">
                  1TB de almacenamiento (reflejado)
                </li>
                <li class="list-group-item">16 GB de RAM</li>
                <li class="list-group-item">15 TB de ancho de banda</li>
                <li class="list-group-item">5 direcciones IP</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <h1 class="text-center mt-5">Afinado para un rendimiento óptimo</h1>
        <h6 class="text-center">
          La nueva funcionalidad brinda la máxima potencia para todos.
        </h6>
        <hr
          style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
        />
      </div>
      <div class="row mt-5">
        <div class="col-xl">
          <div class="row">
            <div class="col-xl-2 text-center">
              <i class="fab fa-internet-explorer fa-2x"></i>
            </div>
            <div class="col-xl">
              <p class="text-uppercase font-weight-bold text-center">
                <u> Nombre de dominio GRATUITO para el primer año</u>
              </p>
              <p class="text-justify">
                Se incluye un año de registro de dominio con cada nuevo plan.
                Después del año inicial, el dominio puede renovarse a precio de
                mercado.
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
              <p class="text-uppercase font-weight-bold text-center">
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
              <p class="text-uppercase font-weight-bold text-center">
                <u> 30 días de garantía de devolución de dinero</u>
              </p>
              <p class="text-justify">
                Si no está satisfecho por algún motivo dentro de los primeros 30
                días de servicio, puede cancelar para obtener un reembolso
                completo de su dinero.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="paddingAncho" class="bg-customSupport">
      <div class="row my-5">
        <div class="col-xl-6 py-5">
          <h2>Soporte dedicado</h2>
          <p>
            Todos los clientes de servidores dedicados tienen acceso a nuestro
            equipo de élite de especialistas dedicados en soporte de servidores.
            Esta línea de soporte exclusiva está disponible para usted 24/7.
          </p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  computed: {
    alertLogin() {
      if (localStorage.getItem("token")) {
        return false;
      }
      return true;
    }
  }
};
</script>
<style scoped>
.bg-customSupport {
  background-color: #86868662;
}
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
.btn-danger {
  opacity: 20% !important;
  cursor: no-drop;
}
</style>
