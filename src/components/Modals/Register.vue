<template>
  <div
    class="modal fade"
    id="ModalCenterRegister"
    tabindex="-1"
    role="dialog"
    aria-labelledby="ModalCenterRegister"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-dialog-scrollable" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenterTitle">
            Rellene los campos
          </h5>
          <button
            type="button"
            class="close"
            data-dismiss="modal"
            aria-label="Close"
          >
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <div class="input-group mb-2">
                <div class="input-group-prepend">
                  <span class="input-group-text">DNI</span>
                </div>
                <input
                  type="number"
                  id="inputdni"
                  class="form-control"
                  v-model="form.dni"
                  autofocus
                  required
                />
              </div>
              <small class="form-text text-muted">
                * Este campo es obligatorio para verificar su autenticidad...
              </small>
            </div>

            <div class="form-group">
              <div class="input-group mb-2">
                <div class="input-group-prepend">
                  <span class="input-group-text">Nombres y Apellidos</span>
                </div>
                <input
                  type="text"
                  id="inputfullname"
                  class="form-control"
                  v-model="form.fullname"
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
              class="btn btn-primary btn-block ml-auto"
              @click="registrar"
            >
              Registrarme
            </button>
          </form>
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
        dni: null,
        fullname: "",
        correo: "",
        pais: "",
        puesto_actual: "",
        empresa: "",
        username: "",
        password: ""
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
    registrar(env) {
      env.preventDefault();
      this.axios.post("/user/registro", this.form).then(res => {
        if (res.data.error) {
          this.toast(
            "b-toaster-bottom-right",
            true,
            "Error de Validación",
            res.data.message,
            "danger"
          );
        } else {
          this.toast(
            "b-toaster-bottom-right",
            true,
            "Registrado Correctamente",
            res.data.message,
            "success"
          );
          localStorage.setItem("tokenUser", res.data.token);
          localStorage.setItem("dataUserProfile", JSON.stringify(this.form));
          window.$("#ModalCenterRegister").modal("hide");
          this.$router.push("/");
        }
      });
    }
  }
};
</script>
