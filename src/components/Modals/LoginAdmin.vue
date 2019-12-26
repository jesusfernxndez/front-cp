<template>
  <div
    class="modal fade"
    id="ModalCenterIngresarAdmin"
    tabindex="-2"
    role="dialog"
    aria-labelledby="ModalCenterIngresarAdmin"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenterTitle">
            Ingrese sus credenciales de administrador
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
              <label>Username:</label>
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
              <label>Password:</label>
              <input
                type="password"
                class="form-control"
                v-model="form.password"
                required
              />
              <small class="form-text text-muted">
                * Este campo es obligatorio ...
              </small>
            </div>
            <button
              type="submit"
              class="btn btn-outline-primary btn-block"
              @click="loginAdmin"
            >
              INICIAR SESIÓN
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
    loginAdmin(e) {
      e.preventDefault();
      this.axios.post("/signin/admin", this.form).then(res => {
        if (res.data.token) {
          localStorage.setItem("tokenAdmin", res.data.token);
          localStorage.setItem(
            "dataUserProfileAdmin",
            JSON.stringify(res.data.dataUser)
          );
          window.$("#ModalCenterIngresarAdmin").modal("hide");
          this.$router.push("/perfil");
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
