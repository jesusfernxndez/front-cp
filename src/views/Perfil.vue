<template>
  <div class="paddingTop animated fadeInLeft">
    <div id="paddingAncho">
      <h1 class="mt-5 text-center font-weight-bold">
        Bienvenido a su perfil
      </h1>
      <hr
        style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
      />
      <div class="container-fluid mt-5">
        <div class="row">
          <div class="col-xl-3 mb-3">
            <div class="list-group" id="list-tab" role="tablist">
              <a
                class="list-group-item list-group-item-action active"
                id="list-home-list"
                data-toggle="list"
                href="#list-home"
                role="tab"
                aria-controls="home"
                >Datos de Usuario</a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-profile-list"
                data-toggle="list"
                href="#list-profile"
                role="tab"
                aria-controls="profile"
                v-if="opcionesUser"
                >Hosting Contratado</a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-messages-list"
                data-toggle="list"
                href="#list-messages"
                role="tab"
                aria-controls="messages"
                v-if="opcionesUser"
                >Sitios Web comprados</a
              >
            </div>
          </div>
          <div class="col-xl border">
            <div class="tab-content" id="nav-tabContent">
              <div
                class="tab-pane fade show active"
                id="list-home"
                role="tabpanel"
                aria-labelledby="list-home-list"
              >
                <h5 class="mt-4">En este apartado puede editar sus datos</h5>
                <form class="mt-5">
                  <div class="form-group">
                    <div class="input-group mb-2">
                      <div class="input-group-prepend">
                        <span class="input-group-text">@ Correo</span>
                      </div>
                      <input
                        type="email"
                        class="form-control"
                        v-model="form.correo"
                        required
                      />
                    </div>
                    <small class="form-text text-muted">
                      * Este campo es obligatorio...
                    </small>
                  </div>

                  <div class="form-group">
                    <div class="input-group mb-2">
                      <div class="input-group-prepend">
                        <span class="input-group-text">Pais</span>
                      </div>
                      <select class="form-control" v-model="form.pais">
                        <option value="peru" selected>Perú</option>
                        <option value="ecuador">Ecuador</option>
                        <option value="colombia">Colombia</option>
                        <option value="chile">Chile</option>
                        <option value="argentina">Argentina</option>
                      </select>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="input-group mb-2">
                      <div class="input-group-prepend">
                        <span class="input-group-text">Puesto Actual</span>
                      </div>
                      <input
                        type="text"
                        class="form-control"
                        v-model="form.puesto_actual"
                      />
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="input-group mb-2">
                      <div class="input-group-prepend">
                        <span class="input-group-text">Empresa</span>
                      </div>
                      <input
                        type="text"
                        class="form-control"
                        v-model="form.empresa"
                      />
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="input-group mb-2">
                      <div class="input-group-prepend">
                        <span class="input-group-text">Username</span>
                      </div>
                      <input
                        type="text"
                        class="form-control"
                        v-model="form.username"
                      />
                    </div>
                    <small class="form-text text-muted">
                      * Este campo es obligatorio...
                    </small>
                  </div>

                  <div class="form-group">
                    <div class="input-group mb-2">
                      <div class="input-group-prepend">
                        <span class="input-group-text">Password</span>
                      </div>
                      <input
                        type="text"
                        class="form-control"
                        v-model="form.password"
                      />
                    </div>
                    <small class="form-text text-muted">
                      * Este campo es obligatorio...
                    </small>
                  </div>
                  <button class="btn btn-warning btn-block ml-auto">
                    Guardar Cambios
                  </button>
                </form>
              </div>
              <div
                class="tab-pane fade"
                id="list-profile"
                role="tabpanel"
                aria-labelledby="list-profile-list"
              >
                <h5 class="mt-4">
                  Este es el el Plan de Hosting que tiene actualmente
                </h5>
                <div class="alert alert-danger" role="alert" v-if="nohosting">
                  {{ nohosting }}
                </div>
                <div
                  class="container-fluid mt-5"
                  style="overflow: auto;"
                  v-else
                >
                  <table class="table table-bordered">
                    <thead class="thead-info">
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">ID de compra</th>
                        <th scope="col">DNI del comprador</th>
                        <th scope="col">ID del plan</th>
                        <th scope="col">Nombre del Plan</th>
                        <th scope="col">Fecha de compra</th>
                        <th scope="col">Fecha de vencimiento</th>
                        <th scope="col">Precio Pagado</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr v-for="(plan, index) in planHosting" :key="plan.id">
                        <th scope="row">{{ index + 1 }}</th>
                        <td>{{ plan.id }}</td>
                        <td>{{ plan.dni }}</td>
                        <td>{{ plan.id_plan }}</td>
                        <td>{{ plan.nombre_plan }}</td>
                        <td>{{ new Date(plan.fecha_compra) }}</td>
                        <td>{{ plan.fecha_vencimiento }}</td>
                        <td>{{ plan.precio }}</td>
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
                <h5 class="mt-4">Estos son los sitios web que ha adquirido</h5>
                <div class="alert alert-danger" role="alert" v-if="nositios">
                  {{ nositios }}
                </div>
                <div class="container-fluid mt-5" v-else>
                  <table class="table table-bordered">
                    <thead class="thead-info">
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">ID de compra</th>
                        <th scope="col">DNI del comprador</th>
                        <th scope="col">ID de sitio</th>
                        <th scope="col">Nombre de sitio</th>
                        <th scope="col">Fecha de compra</th>
                        <th scope="col">Precio Pagado</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr
                        v-for="(sitio, index) in sitiosComprados"
                        :key="sitio.id"
                      >
                        <th scope="row">{{ index + 1 }}</th>
                        <td>{{ sitio.id }}</td>
                        <td>{{ sitio.dni }}</td>
                        <td>{{ sitio.id_sitio }}</td>
                        <td>{{ sitio.nombre_sitio }}</td>
                        <td>{{ sitio.fecha_compra }}</td>
                        <td>{{ sitio.precio }}</td>
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
      form: {
        correo: "",
        pais: "",
        puesto_actual: "",
        empresa: "",
        username: "",
        password: ""
      },
      planHosting: Array,
      nohosting: false,
      sitiosComprados: Array,
      nositios: false
    };
  },
  computed: {
    mostrarPerfil() {
      if (
        localStorage.getItem("tokenUser") ||
        localStorage.getItem("tokenAdmin")
      ) {
        return true;
      }
      return false;
    },
    opcionesUser() {
      if (localStorage.getItem("tokenUser")) {
        return true;
      }
      return false;
    }
  },
  created() {
    if (!this.mostrarPerfil) {
      this.$router.go(this.$router.push("/"));
    } else {
      if (localStorage.getItem("tokenUser")) {
        const datauser = JSON.parse(localStorage.getItem("dataUserProfile"));
        this.form.correo = datauser.correo;
        this.form.pais = datauser.pais;
        this.form.puesto_actual = datauser.pais;
        this.form.empresa = datauser.empresa;
        this.form.username = datauser.username;
        this.form.password = datauser.password;
        this.axios({
          method: "get", //you can set what request you want to be
          url: "/misCompras",
          headers: {
            authorization: localStorage.getItem("tokenUser"),
            dni: datauser.dni
          }
        }).then(res => {
          if (!res.data.comprashosting && !res.data.comprassitios) {
            this.nohosting = "No se ha encontrado compras";
            this.nositios = "No se ha encontrado compras";
          } else if (res.data.comprashosting > 0 && !res.data.comprassitios) {
            this.planHosting = res.data.comprashosting;
            this.nositios = "No se ha encontrado compras";
          } else if (res.data.comprassitios > 0 && !res.data.comprashosting) {
            this.sitiosComprados = res.data.comprassitios;
            this.nohosting = "No se ha encontrado compras";
          }
          this.planHosting = res.data.comprashosting;
          this.sitiosComprados = res.data.comprassitios;
        });
      } else if (localStorage.getItem("tokenAdmin")) {
        const datauserAdmin = JSON.parse(
          localStorage.getItem("dataUserProfileAdmin")
        );
        this.form.correo = datauserAdmin.correo;
        this.form.pais = datauserAdmin.pais;
        this.form.puesto_actual = datauserAdmin.pais;
        this.form.empresa = datauserAdmin.empresa;
        this.form.username = datauserAdmin.username;
        this.form.password = datauserAdmin.password;
        //  this.axios
        //    .get(
        //      "/profile/admin",
        //      {
        //        headers: {
        //          authorization: localStorage.getItem("tokenAdmin")
        //        }
        //      },
        //      this.form
        //    )
        //    .then(res => {
        //      this.planHosting = res.data;
        //    });
        //} else {
        //  console.log("no token");
        //}
        //let fechaCompra = new Date();
        //fechaCompra =
        //  fechaCompra.getDate() +
        //  "/" +
        //  (fechaCompra.getMonth() + 1) +
        //  "/" +
        //  fechaCompra.getFullYear();
        //this.planHosting.fecha_vencimiento = fechaCompra;
      }
    }
  }
};
</script>
