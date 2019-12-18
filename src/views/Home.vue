<template>
  <div>
    <SectionTop />
    <div class="paddingTop" id="paddingAncho">
      <h1 class="text-center font-weight-bold" id="subtitle">
        Gestiona tu negocio como nunca antes
      </h1>
      <hr
        style="width: 20%; border-color: #46A2D0; border-top-width: 2px !important"
      />
      <h4 class="text-center">Es rápido y eficiente</h4>
      <div class="container">
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
      </div>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import SectionTop from "@/components/SectionTop.vue";

export default {
  name: "home",
  components: {
    SectionTop
  },
  methods: {
    handleScroll: function() {
      if (window.$(window).scrollTop() > 10) {
        window.$(".navbar").addClass("bg-white border-bottom");
      } else {
        window.$(".navbar").removeClass("bg-white border-bottom");
      }
    }
  },

  created: function() {
    window.addEventListener("scroll", this.handleScroll);
  },
  destroyed: function() {
    window.removeEventListener("scroll", this.handleScroll);
  }
};
</script>
<style scoped>
#subtitle {
  color: #46a2d0;
}
</style>
