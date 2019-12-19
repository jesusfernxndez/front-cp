<template>
  <div class="paddingTop animated fadeInLeft">
    <div id="paddingAncho">
      <h1 class="mt-5 text-center font-weight-bold">
        Bienvenido al Blog
      </h1>
      <hr
        style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
      />
      <div class="container mt-5">
        <div
          class="alert alert-danger"
          role="alert"
          v-if="!mostrarCajacomentar"
        >
          Este apartado no está habilitado para: Administrador y Personas sin
          cuenta.
        </div>
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
                ><h5>Comentarios</h5></a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-profile-list"
                data-toggle="list"
                href="#list-profile"
                role="tab"
                aria-controls="profile"
                ><h5>Noticias</h5></a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-settings-list"
                data-toggle="list"
                href="#list-settings"
                role="tab"
                aria-controls="settings"
                ><h5>Tutoriales</h5></a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-messages-list"
                data-toggle="list"
                href="#list-messages"
                role="tab"
                aria-controls="messages"
                ><h5>Eventos</h5></a
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
                <div class="container-fluid" v-if="mostrarCajacomentar">
                  <h5>Escribe un comentario:</h5>
                  <form>
                    <div class="form-group">
                      <textarea class="form-control" rows="5"></textarea>
                      <button class="btn btn-primary mt-2">
                        Publicar Comentario
                      </button>
                    </div>
                  </form>
                </div>
                <div class="container-fluid">
                  <h3>Comentarios:</h3>
                  <div class="container">
                    <div class="bg-info">
                      Aquí el comentario
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="tab-pane fade"
                id="list-profile"
                role="tabpanel"
                aria-labelledby="list-profile-list"
              >
                <div class="container-fluid" v-if="mostrarCajacomentar">
                  <h5>Puedes compartir una noticia:</h5>
                  <form>
                    <div class="form-group">
                      <textarea class="form-control" rows="5"></textarea>
                      <button class="btn btn-primary mt-2">
                        Compartir Noticia
                      </button>
                    </div>
                  </form>
                </div>
                <div class="container-fluid">
                  <h3>Noticias:</h3>
                  <div class="container">
                    <div class="bg-info">
                      Aquí el comentario
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="tab-pane fade"
                id="list-messages"
                role="tabpanel"
                aria-labelledby="list-messages-list"
              >
                <div class="container-fluid">
                  <h3>Los Administradores Publicaron estos eventos:</h3>
                  <div class="container">
                    <div class="bg-info">
                      Aquí las Capactiaciones
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="tab-pane fade"
                id="list-settings"
                role="tabpanel"
                aria-labelledby="list-settings-list"
              >
                <div class="container-fluid" v-if="mostrarCajacomentar">
                  <h5>Puedes compartir un Tutorial:</h5>
                  <form>
                    <div class="form-group">
                      <textarea class="form-control" rows="5"></textarea>
                      <button class="btn btn-primary mt-2">
                        Compartir tutorial
                      </button>
                    </div>
                  </form>
                </div>
                <div class="container-fluid">
                  <h3>Tutoriales:</h3>
                  <div class="container">
                    <div class="bg-info">
                      Aquí el comentario
                    </div>
                  </div>
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
  computed: {
    mostrarCajacomentar() {
      if (localStorage.getItem("tokenUser")) {
        return true;
      }
      return false;
    }
  }
};
</script>
