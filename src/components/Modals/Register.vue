<template>
  <div
    class="modal fade"
    id="ModalCenterRegister"
    tabindex="-1"
    role="dialog"
    aria-labelledby="ModalCenterRegister"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
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
              <label for="inputUsername">Username:</label>
              <input
                type="text"
                id="inputUsername"
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
                id="inputPassword"
                class="form-control"
                v-model="form.password"
                required
              />
              <small id="emailHelp" class="form-text text-muted">
                * Este campo es obligatorio ...
              </small>
            </div>
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
  methods: {}
};
</script>
