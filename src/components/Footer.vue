<template>
  <div class="mt-5">
    <div class="container-fluid border-top">
      <div class="row mt-5 bg-white" id="paddingAncho">
        <div class="col-sm mt-5">
          <ul class="list-unstyled">
            <h5><strong><u>Acceso Rápido</u></strong></h5>
            <li>
              <router-link to="/" class="text-dark">Inicio</router-link>
            </li>
            <li>
              <router-link to="/contacto" class="text-dark"
                >Ponte en Contácto con nosotros</router-link
              >
            </li>
            <li>
              <router-link to="/terminos-condiciones" class="text-dark"
                >Términos y Condiciones</router-link
              >
            </li>
            <li>
              <router-link to="/libro-reclamaciones" class="text-dark"
                >Libro de Reclamaciones</router-link
              >
            </li>
          </ul>
        </div>
        <div class="col-sm mt-5 text-center">
          <strong>Simplificamos</strong> la forma en la que los clientes pagan,
          los desarrolladores se integran y los comercios administran sus
          negocios.
          <div class="row mt-5">
            <h6 class="w-100">Siguenos en nuestras Redes</h6>
            <div class="col-sm mt-2 icon-social text-primary">
              <a href="https://www.google.com">
                <i class="fab fa-facebook-square fa-2x"></i>
              </a>
            </div>
            <div class="col-sm mt-2 icon-social text-danger">
              <a href="https://www.google.com">
                <i class="fab fa-youtube fa-2x"></i>  
              </a>
            </div>
            <div class="col-sm mt-2 icon-social text-warning">
              <a href="https://www.google.com">
                <i class="fab fa-instagram fa-2x"></i> 
              </a>   
            </div>
          </div>
        </div>
        <div class="col-sm mt-5">
          <div class="row">
            <div class="col-sm text-center">
              <img src="@/assets/mapa2-1.png" class="w-100 mapa" alt="" srcset="" />
            </div>
            <div class="col-sm text-center">
              <strong class="h5">Una sola Solución,</strong>
              <p class="h6">toda Latinoamérica</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer pt-4 pb-3 mt-5" id="paddingAncho">
      <div class="row text-white">
        <div class="col-sm lef">
          <h6 class="text-left">
            <i class="fas fa-copyright"></i>
            Todos los derechos Reservados
          </h6>
        </div>
        <div class="col-sm rig">
          <h6 class="text-right">Hecho con ❤ por Jesús Fernández</h6>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>
<style scoped>
.footer {
  position: absolute !important;
  width: 100%;
  background-color: #46C8BB
}
@media only screen and (max-width: 1200px) {
  .list-unstyled{
    text-align: center !important;
  }
}
@media only screen and (max-width: 600px) {
  .footer .row .col-sm h6 {
    text-align: center !important;
  }
}
@media only screen and (max-width: 585px) {
  .mapa {
    width: 90px !important
  }
}
</style>
