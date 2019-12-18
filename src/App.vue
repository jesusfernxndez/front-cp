<template>
  <div id="app">
    <NavBar />
    <div id="vistas">
      <router-view />
    </div>
    <ModalLogin />
    <ModalRegister />
    <Footer />
  </div>
</template>

<script>
import NavBar from "@/components/NavBar.vue";
import Footer from "@/components/Footer.vue";
import ModalLogin from "@/components/Modals/Login.vue";
import ModalRegister from "@/components/Modals/Register.vue";
export default {
  components: {
    NavBar,
    ModalLogin,
    ModalRegister,
    Footer
  }
};
</script>
