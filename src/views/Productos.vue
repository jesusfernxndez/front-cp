<template>
  <div>
    <router-view />
  </div>
</template>
<script>
export default {
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
