<template>
  <div class="paddingTop animated fadeInLeft">
    <div id="paddingAncho">
      <h1 class="mt-5 text-center font-weight-bold">
        Bienvenido al Panel de Administración
      </h1>
      <hr
        style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
      />
      <div class="container mt-5">
        <div class="row">
          <div class="col-lg">
            <div
              class="list-group list-group-horizontal-xl text-center"
              id="list-tab"
              role="tablist"
            >
              <a
                class="list-group-item list-group-item-action active"
                id="list-home-list"
                data-toggle="list"
                href="#list-home"
                role="tab"
                aria-controls="home"
                @click="getEventos"
                ><h5>Agregar eventos</h5></a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-profile-list"
                data-toggle="list"
                href="#list-profile"
                role="tab"
                aria-controls="profile"
                @click="getUsuarios"
                ><h5>Usuarios Registrados</h5></a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-settings-list"
                data-toggle="list"
                href="#list-settings"
                role="tab"
                aria-controls="settings"
                @click="getVentasHosting"
                ><h5>Ventas de Hosting</h5></a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-messages-list"
                data-toggle="list"
                href="#list-messages"
                role="tab"
                aria-controls="messages"
                @click="getVentasSitios"
                ><h5>Ventas de Sitios Web</h5></a
              >
            </div>
          </div>
        </div>
        <div class="row mt-2">
          <div class="col-lg">
            <div class="tab-content p-3" id="nav-tabContent">
              <div
                class="tab-pane fade show active"
                id="list-home"
                role="tabpanel"
                aria-labelledby="list-home-list"
              >
                <div class="container-fluid" v-if="mostrarsolocajaOne">
                  <h5>Detalles del Evento:</h5>
                  <form>
                    <div class="form-group">
                      <label>Título del evento</label>
                      <input
                        type="text"
                        class="form-control"
                        v-model="newEvento.titulo"
                      />
                    </div>
                    <div class="form-group">
                      <label>Fecha del evento</label>
                      <input
                        type="date"
                        class="form-control"
                        v-model="newEvento.fecha"
                      />
                    </div>
                    <div class="form-group">
                      <label>Hora de inicio</label>
                      <input
                        type="time"
                        class="form-control"
                        v-model="newEvento.hora_inicio"
                      />
                    </div>
                    <div class="form-group">
                      <label>Hora de Término</label>
                      <input
                        type="time"
                        class="form-control"
                        v-model="newEvento.hora_termino"
                      />
                    </div>
                    <div class="form-group">
                      <label>Lugar del Evento</label>
                      <input
                        type="text"
                        class="form-control"
                        v-model="newEvento.lugar"
                      />
                    </div>
                    <div>
                      <button class="btn btn-primary mt-2" @click="envEvento">
                        Publicar Evento
                      </button>
                    </div>
                  </form>
                </div>
                <div class="container-fluid mt-4">
                  <h3>Eventos:</h3>
                  <div v-for="evento in showEventos" :key="evento.id">
                    <div
                      class="border rounded border-success mt-2 p-2 animated rubberBand"
                    >
                      <p class="text-primary"><u>Publicado por: </u></p>
                      <h6>{{ evento.correo }}</h6>
                      <p class="text-primary"><u>Rango :</u></p>
                      <h6>{{ evento.rango }}</h6>
                      <p class="text-primary"><u>Titulo :</u></p>
                      <div class="container border-warning">
                        <p class="border border-warning rounded p-2">
                          {{ evento.titulo }}
                        </p>
                      </div>
                      <p>Lugar: {{ evento.lugar }}</p>
                      <p>Fecha: {{ evento.fecha }}</p>
                      <p>Hora de inicio: {{ evento.hora_inicio }}</p>
                      <p>Hora de termino: {{ evento.hora_termino }}</p>
                    </div>
                    <hr />
                  </div>
                </div>
              </div>
              <div
                class="tab-pane fade"
                id="list-profile"
                role="tabpanel"
                aria-labelledby="list-profile-list"
              >
                <div class="container-fluid mt-5" style="overflow:auto">
                  <table class="table table-bordered">
                    <thead class="thead-info">
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">dni</th>
                        <th scope="col">Nombres y Apellidos</th>
                        <th scope="col">Correo Electrónico</th>
                        <th scope="col">Username</th>
                        <th scope="col">Password</th>
                        <th scope="col">Pais</th>
                        <th scope="col">Puesto Actual</th>
                        <th scope="col">Empresa</th>
                        <th scope="col">Acciones</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr
                        v-for="(usuario, index) in showUsuarios"
                        :key="usuario.dni"
                      >
                        <th scope="row">{{ index + 1 }}</th>
                        <td>{{ usuario.dni }}</td>
                        <td>{{ usuario.fullname }}</td>
                        <td>{{ usuario.correo }}</td>
                        <td>{{ usuario.username }}</td>
                        <td>{{ usuario.password }}</td>
                        <td>{{ usuario.pais }}</td>
                        <td>{{ usuario.puesto_actual }}</td>
                        <td>{{ usuario.empresa }}</td>
                        <td>
                          <button
                            class="btn btn-danger btn-small"
                            @click="EliminarUsuario(usuario.dni)"
                          >
                            Eliminar
                          </button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div
                class="tab-pane fade"
                id="list-settings"
                role="tabpanel"
                aria-labelledby="list-settings-list"
              >
                <div class="container-fluid mt-5" style="overflow:auto">
                  <table class="table table-bordered">
                    <thead class="thead-info">
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">dni</th>
                        <th scope="col">id_plan</th>
                        <th scope="col">nombre_plan</th>
                        <th scope="col">fecha_compra</th>
                        <th scope="col">fecha_vencimiento</th>
                        <th scope="col">precio</th>
                        <th scope="col">Acciones</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr
                        v-for="(planhosting, index) in showVentasHosting"
                        :key="planhosting.id"
                      >
                        <th scope="row">{{ index + 1 }}</th>
                        <td>{{ planhosting.dni }}</td>
                        <td>{{ planhosting.id_plan }}</td>
                        <td>{{ planhosting.nombre_plan }}</td>
                        <td>{{ planhosting.fecha_compra }}</td>
                        <td>{{ planhosting.fecha_vencimiento }}</td>
                        <td>{{ planhosting.precio }}</td>
                        <td>
                          <button
                            class="btn btn-danger btn-small"
                            @click="EliminarVentaHosting(planhosting.id)"
                          >
                            Eliminar
                          </button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div
                class="tab-pane fade"
                id="list-messages"
                role="tabpanel"
                aria-labelledby="list-messages-list"
              >
                <div class="container-fluid mt-5" style="overflow:auto">
                  <table class="table table-bordered">
                    <thead class="thead-info">
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">dni</th>
                        <th scope="col">id_sitio</th>
                        <th scope="col">nombre_sitio</th>
                        <th scope="col">Fecha_compra</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Acciones</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr
                        v-for="(ventasitio, index) in showVentasSitios"
                        :key="ventasitio.id"
                      >
                        <th scope="row">{{ index + 1 }}</th>
                        <td>{{ ventasitio.dni }}</td>
                        <td>{{ ventasitio.id_sitio }}</td>
                        <td>{{ ventasitio.nombre_sitio }}</td>
                        <td>{{ ventasitio.fecha_compra }}</td>
                        <td>{{ ventasitio.precio }}</td>
                        <td>
                          <button
                            class="btn btn-danger btn-small"
                            @click="EliminarVentaSitio(ventasitio.id)"
                          >
                            Eliminar
                          </button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
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
  data() {
    return {
      headerAuthorization: "",
      showEventos: Array,
      showUsuarios: Array,
      showVentasHosting: Array,
      showVentasSitios: Array,
      newEvento: {
        dni_admin: null,
        titulo: "",
        correo: "",
        fecha: "",
        hora_inicio: new Date(),
        hora_termino: new Date(),
        lugar: ""
      }
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
    getUsuarios() {
      this.axios({
        method: "get",
        url: "/showUsuarios"
      }).then(res => {
        this.showUsuarios = res.data;
      });
    },
    getEventos() {
      this.axios({
        method: "get",
        url: "/showEventos"
      }).then(res => {
        this.showEventos = res.data;
      });
    },
    getVentasHosting() {
      this.axios({
        method: "get",
        url: "/showVentasHosting"
      }).then(res => {
        this.showVentasHosting = res.data;
      });
    },
    getVentasSitios() {
      this.axios({
        method: "get",
        url: "/showVentasSitios"
      }).then(res => {
        this.showVentasSitios = res.data;
      });
    },
    envEvento(env) {
      env.preventDefault();
      this.axios({
        method: "post",
        url: "/newEvento",
        data: this.newEvento,
        headers: {
          authorization: this.headerAuthorization
        }
      }).then(res => {
        if (res.data.message) {
          this.toast(
            "b-toaster-bottom-right",
            true,
            "Felicidades",
            res.data.message,
            "success"
          );
          this.newEvento.titulo = "";
          this.newEvento.lugar = "";
          this.getEventos();
        }
      });
    },
    EliminarUsuario(dni) {
      this.axios({
        method: "delete",
        url: `/deleteUsuario/${dni}`,
        headers: {
          authorization: this.headerAuthorization
        }
      }).then(res => {
        if (res.data.message) {
          this.toast(
            "b-toaster-bottom-right",
            true,
            "Felicidades",
            res.data.message,
            "success"
          );
          this.getUsuarios();
        }
      });
    },
    EliminarVentaHosting(id) {
      this.axios({
        method: "delete",
        url: `/deleteVentaHosting/${id}`
      }).then(res => {
        if (res.data.message) {
          this.toast(
            "b-toaster-bottom-right",
            true,
            "Felicidades",
            res.data.message,
            "success"
          );
          this.getVentasHosting();
        }
      });
    },
    EliminarVentaSitio(id) {
      this.axios({
        method: "delete",
        url: `/deleteVentaSitio/${id}`
      }).then(res => {
        if (res.data.message) {
          this.toast(
            "b-toaster-bottom-right",
            true,
            "Felicidades",
            res.data.message,
            "success"
          );
          this.getVentasSitios();
        }
      });
    }
  },
  computed: {
    mostrarsolocajaOne() {
      if (
        localStorage.getItem("tokenUser") ||
        localStorage.getItem("tokenAdmin")
      ) {
        return true;
      }
      return false;
    }
  },
  created() {
    this.getEventos();
    this.getUsuarios();
    this.getVentasHosting();
    this.getVentasSitios();
    let newfecha = new Date();
    newfecha =
      newfecha.getFullYear() +
      "-" +
      (newfecha.getMonth() + 1) +
      "-" +
      newfecha.getDate();
    this.newEvento.fecha = newfecha;
    if (localStorage.getItem("tokenAdmin")) {
      this.headerAuthorization = localStorage.getItem("tokenAdmin");
      const userdata = JSON.parse(localStorage.getItem("dataUserProfileAdmin"));
      this.newEvento.dni_admin = userdata.dni;
      this.newEvento.correo = userdata.correo;
    } else {
      return false;
    }
  }
};
</script>
