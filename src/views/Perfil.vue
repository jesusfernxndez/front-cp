<template>
  <div class="paddingTop animated fadeInLeft">
    <div id="paddingAncho">
      <h1 class="mt-5 text-center font-weight-bold">
        Bienvenido a su perfil
      </h1>
      <hr
        style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
      />
      <div class="container mt-5">
        <div class="row">
          <div class="col-4">
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
                >Hosting Contratado</a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-messages-list"
                data-toggle="list"
                href="#list-messages"
                role="tab"
                aria-controls="messages"
                >Sitios Web comprados</a
              >
            </div>
          </div>
          <div class="col-8 border">
            <div class="tab-content" id="nav-tabContent">
              <div
                class="tab-pane fade show active"
                id="list-home"
                role="tabpanel"
                aria-labelledby="list-home-list"
              >
                <h5 class="mt-2">En este apartado puede editar sus datos</h5>
                <form>
                  <div class="form-group">
                    <div class="input-group mb-2">
                      <div class="input-group-prepend">
                        <span class="input-group-text">@ Correo</span>
                      </div>
                      <input
                        type="email"
                        id="inputcorreo"
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
                      <select
                        class="form-control"
                        id="selectpais"
                        v-model="form.pais"
                      >
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
                        id="inputpuestoactual"
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
                        id="inputempresa"
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
                        id="inputusername"
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
                        id="inputpassword"
                        class="form-control"
                        v-model="form.password"
                      />
                    </div>
                    <small class="form-text text-muted">
                      * Este campo es obligatorio...
                    </small>
                  </div>
                  <button
                    class="btn btn-warning btn-block ml-auto"
                  >
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
                <h5 class="mt-2">
                  Este es el el Plan de Hosting que tiene actualmente
                </h5>
                <label> Fecha de Vencimiento </label>
                <h6>{{ planHosting.fecha_vencimiento }}</h6>
              </div>
              <div
                class="tab-pane fade"
                id="list-messages"
                role="tabpanel"
                aria-labelledby="list-messages-list"
              >
                <h5 class="mt-2">Estos son los sitios web que ha adquirido</h5>
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
        dni: 71457234,
        correo: "",
        pais: "",
        puesto_actual: "",
        empresa: "",
        username: "",
        password: ""
      },
      planHosting: {
        id_compra: null,
        fecha_compra: new Date(),
        fecha_vencimiento: new Date()
      }
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
    }
  },
  created() {
    if (!this.mostrarPerfil) {
      this.$router.go(this.$router.push("/"));
    } else {
      if (localStorage.getItem("tokenUser")) {
         this.axios({
          method: 'post', //you can set what request you want to be
          url: '/profile',
          data: this.form,
          headers: {
            authorization: localStorage.getItem('tokenUser')
          }
        }) .then( res => {
          console.log(res)
        })
      } else if (localStorage.getItem("tokenAdmin")) {
        this.axios
          .get(
            "/profile/admin",
            {
              headers: {
                authorization: localStorage.getItem("tokenAdmin")
              }
            },
            this.form
          )
          .then(res => {
            console.log(res);
          });
      } else {
        console.log('no token')
      }
      let fechaCompra = new Date();
      fechaCompra =
        fechaCompra.getDate() +
        "/" +
        (fechaCompra.getMonth() + 1) +
        "/" +
        fechaCompra.getFullYear();
      this.planHosting.fecha_vencimiento = fechaCompra;
    }
  }
};
</script>
