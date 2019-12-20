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
        <div class="alert alert-danger" role="alert" v-if="!mostrarsolocajaOne">
          Este apartado no está habilitado para Personas sin cuenta.
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
                @click="getComentarios"
                ><h5>Comentarios</h5></a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-profile-list"
                data-toggle="list"
                href="#list-profile"
                role="tab"
                aria-controls="profile"
                @click="getNoticias"
                ><h5>Noticias</h5></a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-settings-list"
                data-toggle="list"
                href="#list-settings"
                role="tab"
                aria-controls="settings"
                @click="getTutoriales"
                ><h5>Tutoriales</h5></a
              >
              <a
                class="list-group-item list-group-item-action"
                id="list-messages-list"
                data-toggle="list"
                href="#list-messages"
                role="tab"
                aria-controls="messages"
                @click="getEventos"
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
                <div class="container-fluid" v-if="mostrarsolocajaOne">
                  <h5>Escribe un comentario:</h5>
                  <form>
                    <div class="form-group">
                      <textarea
                        class="form-control"
                        rows="5"
                        v-model="newComentario.comentario"
                      ></textarea>
                      <button class="btn btn-primary mt-2" @click="envComment">
                        Publicar Comentario
                      </button>
                    </div>
                  </form>
                </div>
                <div class="container-fluid">
                  <h3>Comentarios:</h3>
                  <div class="container-fluid border rounded">
                    <div
                      v-for="comentario in showComentarios"
                      :key="comentario.id"
                    >
                      <div
                        class="border rounded border-success mt-2 p-2 animated swing"
                      >
                        <p class="text-primary"><u>Enviado por: </u></p>
                        <h6>{{ comentario.correo }}</h6>
                        <p class="text-primary"><u>Rango :</u></p>
                        <h6>{{ comentario.rango }}</h6>
                        <p class="text-primary"><u>Comentario :</u></p>
                        <div class="container border-warning">
                          <p class="border border-warning rounded p-2">
                            {{ comentario.comentario }}
                          </p>
                        </div>
                        <p>Fecha: {{ comentario.fecha }}</p>
                      </div>
                      <hr />
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
                <div class="container-fluid" v-if="mostrarsolocajaOne">
                  <h5>Puedes compartir una noticia:</h5>
                  <form>
                    <div class="form-group">
                      <textarea
                        class="form-control"
                        rows="5"
                        v-model="newNoticia.noticia"
                      ></textarea>
                      <button class="btn btn-primary mt-2" @click="envNoticia">
                        Compartir Noticia
                      </button>
                    </div>
                  </form>
                </div>
                <div class="container-fluid">
                  <h3>Noticias:</h3>
                  <div class="container-fluid border rounded">
                    <div v-for="noticia in showNoticias" :key="noticia.id">
                      <div
                        class="border rounded border-success mt-2 p-2 animated swing"
                      >
                        <p class="text-primary"><u>Enviado por: </u></p>
                        <h6>{{ noticia.correo }}</h6>
                        <p class="text-primary"><u>Rango :</u></p>
                        <h6>{{ noticia.rango }}</h6>
                        <p class="text-primary"><u>Noticia :</u></p>
                        <div class="container border-warning">
                          <p class="border border-warning rounded p-2">
                            {{ noticia.noticia }}
                          </p>
                        </div>
                        <p>Fecha: {{ noticia.fecha }}</p>
                      </div>
                      <hr />
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
                <div class="container-fluid" v-if="mostrarsolocajaOne">
                  <h5>Puedes compartir un Tutorial:</h5>
                  <form>
                    <div class="form-group">
                      <textarea
                        class="form-control"
                        rows="5"
                        v-model="newTutorial.tutorial"
                      ></textarea>
                      <button class="btn btn-primary mt-2" @click="envTutorial">
                        Compartir tutorial
                      </button>
                    </div>
                  </form>
                </div>
                <div class="container-fluid">
                  <h3>Tutoriales:</h3>
                  <div class="container-fluid border rounded">
                    <div v-for="tutorial in showTutoriales" :key="tutorial.id">
                      <div
                        class="border rounded border-success mt-2 p-2 animated swing"
                      >
                        <p class="text-primary"><u>Publicado por: </u></p>
                        <h6>{{ tutorial.correo }}</h6>
                        <p class="text-primary"><u>Rango :</u></p>
                        <h6>{{ tutorial.rango }}</h6>
                        <p class="text-primary"><u>Tutorial :</u></p>
                        <div class="container border-warning">
                          <p class="border border-warning rounded p-2">
                            {{ tutorial.noticia }}
                          </p>
                        </div>
                        <p>Fecha: {{ tutorial.fecha }}</p>
                      </div>
                      <hr />
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
                  <div class="container-fluid border rounded">
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
      showComentarios: Array,
      showNoticias: Array,
      showTutoriales: Array,
      showEventos: Array,
      newComentario: {
        dni_emisor: null,
        correo: "",
        rango: "",
        comentario: "",
        fecha: new Date()
      },
      newNoticia: {
        dni_emisor: null,
        correo: "",
        rango: "",
        noticia: "",
        fecha: new Date()
      },
      newTutorial: {
        dni_emisor: null,
        correo: "",
        rango: "",
        tutorial: "",
        fecha: new Date()
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
    getComentarios() {
      this.axios({
        method: "get", //you can set what request you want to be
        url: "/showComentarios"
      }).then(res => {
        this.showComentarios = res.data;
      });
    },
    getNoticias() {
      this.axios({
        method: "get", //you can set what request you want to be
        url: "/showNoticias"
      }).then(res => {
        this.showNoticias = res.data;
      });
    },
    getTutoriales() {
      this.axios({
        method: "get",
        url: "/showTutoriales"
      }).then(res => {
        this.showTutoriales = res.data;
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
    envComment(env) {
      env.preventDefault();
      this.axios({
        method: "post",
        url: "/newComentario",
        data: this.newComentario,
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
          this.newComentario.comentario = "";
          this.getComentarios();
        }
      });
    },
    envNoticia(env) {
      env.preventDefault();
      this.axios({
        method: "post",
        url: "/newNoticia",
        data: this.newNoticia,
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
          this.newNoticia.noticia = "";
          this.getNoticias();
        }
      });
    },
    envTutorial(env) {
      env.preventDefault();
      console.log(this.newTutorial);
      this.axios({
        method: "post",
        url: "/newTutorial",
        data: this.newTutorial,
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
          this.newTutorial.tutorial = "";
          this.getTutoriales();
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
    this.getComentarios();
    this.getNoticias();
    this.getTutoriales();
    this.getEventos();
    let newfecha = new Date();
    newfecha =
      newfecha.getFullYear() +
      "-" +
      (newfecha.getMonth() + 1) +
      "-" +
      newfecha.getDate();
    this.newComentario.fecha = newfecha;
    this.newNoticia.fecha = newfecha;
    this.newTutorial.fecha = newfecha;
    if (localStorage.getItem("tokenUser")) {
      this.headerAuthorization = localStorage.getItem("tokenUser");
      const userdata = JSON.parse(localStorage.getItem("dataUserProfile"));
      this.newComentario.dni_emisor = userdata.dni;
      this.newComentario.correo = userdata.correo;
      this.newComentario.rango = "Usuario";
      this.newNoticia.dni_emisor = userdata.dni;
      this.newNoticia.correo = userdata.correo;
      this.newNoticia.rango = "Usuario";
      this.newTutorial.dni_emisor = userdata.dni;
      this.newTutorial.correo = userdata.correo;
      this.newTutorial.rango = "Usuario";
    } else if (localStorage.getItem("tokenAdmin")) {
      this.headerAuthorization = localStorage.getItem("tokenAdmin");
      const userdata = JSON.parse(localStorage.getItem("dataUserProfileAdmin"));
      this.newComentario.dni_emisor = userdata.dni;
      this.newComentario.correo = userdata.correo;
      this.newComentario.rango = "Administrador";
      this.newNoticia.dni_emisor = userdata.dni;
      this.newNoticia.correo = userdata.correo;
      this.newNoticia.rango = "Administrador";
      this.newTutorial.dni_emisor = userdata.dni;
      this.newTutorial.correo = userdata.correo;
      this.newTutorial.rango = "Administrador";
    } else {
      return false;
    }
  }
};
</script>
