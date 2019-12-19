<template>
  <nav
    class="navbar navbar-expand-lg navbar-light fixed-top"
    :class="{ 'bg-white border-bottom': colorNav }"
    id="paddingAncho"
    v-if="renderNav"
  >
    <router-link class="navbar-brand" to="/">
      <img src="../assets/logo-dark.png" style="width: 30%" />
    </router-link>
    <button
      class="navbar-toggler"
      type="button"
      data-toggle="collapse"
      data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <router-link class="nav-link" to="/">Inicio</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/nosotros">Nosotros</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/blog">Blog</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/contacto">Contácto</router-link>
        </li>
        <li class="nav-item dropdown">
          <a
            class="nav-link dropdown-toggle"
            href="#"
            id="navbarDropdown"
            role="button"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
            Tienda
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <router-link class="dropdown-item" to="/tienda/hosting-dedicado"
              >Hosting Dedicado</router-link
            >
            <router-link class="dropdown-item" to="/tienda/portafolio"
              >Portafolio Web</router-link
            >
          </div>
        </li>
        <li class="nav-item dropdown" v-if="isLogged">
          <a
            class="nav-link dropdown-toggle"
            href="#"
            id="navbarDropdown"
            role="button"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
            User
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <router-link class="dropdown-item" to="/productos/hosting-dedicado"
              >Perfil</router-link
            >
            <button class="dropdown-item" @click="logout">Salir</button>
          </div>
        </li>
        <li class="nav-item">
          <button
            type="button"
            v-if="btnLoginShow && !isLogged"
            class="btn btn-lg btn-success btn-sm mt-1 text-truncate"
            data-toggle="modal"
            data-target="#ModalCenterIngresar"
          >
            iniciar sesión
          </button>
        </li>
      </ul>
    </div>
  </nav>
</template>
<script>
export default {
  computed: {
    btnLoginShow() {
      const path = this.$route.path;
      if (path === "/") {
        return false;
      }
      return true;
    },
    isLogged() {
      if (localStorage.getItem("tokenUser") || localStorage.getItem("tokenAdmin")) {
        return true;
      }
      return false;
    },
    colorNav() {
      const path = this.$route.path;
      if (path === "/nosotros" || path === "/contacto" || path === "/blog") {
        return true;
      }
      return false;
    },
    renderNav() {
      const path = this.$route.path;
      if (path != "/admin") {
        return true;
      }
      return false;
    }
  },
  methods: {
    logout() {
      localStorage.clear();
      this.$router.go(this.$router.push("/"));
    }
  }
};
</script>
