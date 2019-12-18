<template>
  <div class="mt-5">
    <div class="container-fluid">
      <div class="row mt-5 bg-white" id="paddingAncho">
      <div class="col-xl mt-5">
        <ul class="list-unstyled">
          <li>
            <router-link to="/" class="text-dark">Inicio</router-link>
          </li>
          <li>
            <router-link to="/contacto" class="text-dark">Ponte en Contácto con nosotros</router-link>
          </li>
          <li>
            <router-link to="/terminos-condiciones" class="text-dark">Términos y Condiciones</router-link>
          </li>
          <li>
            <router-link to="/libro-reclamaciones" class="text-dark">Libro de Reclamaciones</router-link>
          </li>
        </ul>
      </div>
      <div class="col-xl mt-5 text-center">
        <strong>Simplificamos</strong> la forma en 
        la que los clientes pagan, 
        los desarrolladores se integran
         y los comercios administran sus negocios.
      </div>
      <div class="col-xl mt-5">
        <div class="row">
          <div class="col-sm">
            <img src="@/assets/mapa2-1.png" class="w-100" alt="" srcset="">
          </div>
          <div class="col-sm">
            <strong class="h5">Una sola Solución,</strong>
            <p class="h6">toda Latinoamérica</p>
          </div>
        </div>
      </div>
    </div>
    </div>
      <div class="footer py-3 mt-5" id="paddingAncho">
    <div class="row text-white">
        <div class="col-sm lef">
            <h6 class="text-left">
                <i class="fas fa-copyright"></i>
                Todos los derechos Reservados</h6>
        </div>
        <div class="col-sm rig">
            <h6 class="text-right">Hecho con ❤ por Jesús Fernández</h6>
        </div>
    </div>
  </div>
    </div>
</template>

<script>
export default {

}
</script>
<style scoped>
.footer {
    position: absolute !important;
    width: 100%;
    background: #00c9ff; /* fallback for old browsers */
  background: -webkit-linear-gradient(
    to bottom,
    #92fe9d,
    #00c9ff
  ); /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(
    to bottom,
    #92fe9d,
    #00c9ff
  ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
@media only screen and (max-width: 600px) {
  .footer .row .col-sm h6{
      text-align: center !important
  }
}
</style>