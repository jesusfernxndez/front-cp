import Vue from "vue";
import BootstrapVue from "bootstrap-vue";
import axios from "axios";
import VueAxios from "vue-axios";
window.$ = window.jQuery = require("jquery");
import "popper.js";
import "bootstrap";
import "./assets/app.css";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import "bootstrap/dist/css/bootstrap.css";
import "bootstrap-vue/dist/bootstrap-vue.css";
import "@fortawesome/fontawesome-free/css/all.css";
import "@fortawesome/fontawesome-free/js/all.js";

Vue.config.productionTip = false;
Vue.use(BootstrapVue);
Vue.use(VueAxios, axios);
axios.defaults.baseURL = "https://titulacion-rest-api.jesusfernxndez10.now.sh";

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
