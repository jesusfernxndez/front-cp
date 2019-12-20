<template>
  <div class="paddingTop animated fadeInUp">
    <div id="paddingAncho">
      <h1 class="mt-5 text-center font-weight-bold">
        Ponte en contácto con nosotros
      </h1>

      <hr
        style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
      />
      <div class="row mx-2">
        <div class="col-sm-8 container">
          <div class="alert alert-success" role="alert">
            Mediante este formulario te puedes poner en contácto con nosotros y
            expresarnos tu libre opinión. Recuerda que tus opiniones nos ayudan
            a crecer cada vez más
          </div>
          <form class="mx-auto">
            <div class="form-group">
              <label for="exampleInputEmail1">Correo Electrónico</label>
              <input
                type="email"
                class="form-control"
                id="exampleInputEmail1"
                aria-describedby="emailHelp"
                v-model="form.emisor_correo"
                required
              />
              <small id="emailHelp" class="form-text text-muted"
                >Este apartado es indispensable *</small
              >
            </div>
            <div class="form-group">
              <label for="inputFullname">Nombres Completos</label>
              <input
                type="text"
                class="form-control"
                id="inputFullname"
                v-model="form.fullname"
              />
            </div>
            <div class="form-group">
              <label for="inputnumero">Número de celular / Teléfono fijo</label>
              <input
                type="number"
                class="form-control"
                id="inputnumero"
                v-model="form.numero"
              />
            </div>
            <div class="form-group">
              <label for="comentario">Mensaje</label>
              <textarea
                class="form-control"
                id="comentario"
                v-model="form.mensaje"
                cols="30"
                rows="10"
              ></textarea>
            </div>
            <button type="submit" class="btn btn-primary" @click="enviar">
              Envíar mensaje
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
        emisor_correo: "",
        fullname: "",
        numero: null,
        mensaje: ""
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
    enviar(env) {
      env.preventDefault();
      this.axios({
        method: "post",
        url: "/contacto",
        data: this.form
      }).then(res => {
        if (res.data.message) {
          this.toast(
            "b-toaster-bottom-right",
            true,
            "Enviado",
            res.data.message,
            "success"
          );
          this.form.emisor_correo = "";
          this.form.fullname = "";
          this.form.numero = null;
          this.form.mensaje = "";
        } else if (res.data.error) {
          this.toast(
            "b-toaster-bottom-right",
            true,
            "No se puedo enviar el mensaje",
            res.data.message,
            "danger"
          );
        }
      });
    }
  }
};
</script>
