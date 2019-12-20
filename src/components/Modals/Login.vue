<template>
  <div
    class="modal fade"
    id="ModalCenterIngresar"
    tabindex="-1"
    role="dialog"
    aria-labelledby="ModalCenterIngresar"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenterTitle">
            INGRESE SUS DATOS
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
              <label for="inputUsername">Username:</label>
              <input
                type="text"
                class="form-control"
                v-model="form.username"
                required
              />
              <small id="emailHelp" class="form-text text-muted">
                * Este campo es obligatorio ...
              </small>
            </div>
            <div class="form-group">
              <label for="inputPassword">Password:</label>
              <input
                type="password"
                class="form-control"
                v-model="form.password"
                required
              />
              <small id="emailHelp" class="form-text text-muted">
                * Este campo es obligatorio ...
              </small>
            </div>
            <button
              type="submit"
              class="btn btn-outline-primary btn-block"
              @click="locUserLogin"
            >
              INICIAR SESIÓN
            </button>
            <button
              type="button"
              class="btn btn-secondary btn-block"
              data-dismiss="modal"
              data-toggle="modal"
              data-target="#ModalCenterRegister"
            >
              REGISTRARSE
            </button>
          </form>
        </div>
        <div class="modal-footer">
          <a
            type="button"
            class="link mx-auto"
            data-dismiss="modal"
            data-toggle="modal"
            data-target="#ModalCenterIngresarAdmin"
          >
            <u>Soy el administrador</u>
          </a>
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
    locUserLogin(e) {
      e.preventDefault();
      this.axios.post("/signin", this.form).then(res => {
        if (res.data.token) {
          localStorage.setItem("tokenUser", res.data.token);
          localStorage.setItem(
            "dataUserProfile",
            JSON.stringify(res.data.dataUser)
          );
          window.$("#ModalCenterIngresar").modal("hide");
          this.$router.go("/");
        } else {
          this.toast(
            "b-toaster-bottom-right",
            true,
            "Error de Validación",
            res.data.message,
            "danger"
          );
        }
      });
    }
  }
};
</script>
