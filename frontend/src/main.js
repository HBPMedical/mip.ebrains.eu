import "@babel/polyfill";
import "mutationobserver-shim";
import Vue from "vue";
import VueApollo from "vue-apollo";
import VueRouter from "vue-router";
import apolloClient from "./vue-apollo";

import "./plugins/bootstrap-vue";
import "./assets/main.css";

import App from "./App.vue";

Vue.use(VueApollo);
Vue.use(VueRouter);
Vue.config.productionTip = false;

const apolloProvider = new VueApollo({
  defaultClient: apolloClient,
});

const router = new VueRouter({
  mode: "history",
  routes: [
    {
      path: "/",
      components: require("./containers/Home.vue"),
    },
    {
      path: "/documentation",
      components: require("./containers/Documentation.vue"),
    },
    {
      path: "/documentation/:homepagecategory/:documentid",
      components: require("./containers/Document.vue"),
    },
    {
      path: "/support",
      components: require("./containers/Support.vue"),
    },
    {
      path: "/developer",
      components: require("./containers/Developer.vue"),
    },
    {
      path: "/login",
      components: require("./containers/Login.vue"),
    },
  ],
});

new Vue({
  apolloProvider,
  router,
  render: (h) => h(App),
}).$mount("#app");
