import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import Nosotros from "../views/Nosotros.vue";
import Blog from "../views/Blog.vue";
import Contacto from "../views/Contacto.vue";
import Tienda from "../views/Tienda.vue";
import Administrador from "../views/Administrador.vue";
// children Productos
import Hosting from "../views/childrenProductos/Hosting.vue";
import Portafolio from "../views/childrenProductos/Portafolio.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "home",
    component: Home
  },
  {
    path: "/nosotros",
    name: "nosotros",
    component: Nosotros
  },
  {
    path: "/blog",
    name: "blog",
    component: Blog
  },
  {
    path: "/contacto",
    name: "contacto",
    component: Contacto
  },
  {
    path: "/tienda",
    name: "tienda",
    component: Tienda,
    children: [
      {
        path: "hosting-dedicado",
        name: "hosting",
        component: Hosting
      },
      {
        path: "portafolio",
        name: "portafolio",
        component: Portafolio
      }
    ]
  },
  {
    path: "/admin",
    name: "administrador",
    component: Administrador
  },
  {
    path: "*",
    name: "not-found",
    component: Home
  }
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes
});

router.beforeEach((to, from, next) => {
  const loggedAdmin = localStorage.getItem("tokenAdmin");

  if (to.path === "/admin" && !loggedAdmin) {
    localStorage.removeItem("tokenAdmin");
    return next("/");
  }
  if (to.path != "/admin" && !loggedAdmin) {
    localStorage.removeItem("tokenAdmin");
    return next();
  }
  return next();
});

export default router;
