<template>
  <div id="app">
    <Navigation />

    <b-container
      fluid
      class="header d-flex align-items-center justify-content-center"
    >
      <div class="header-card">
        <h1>The Medical Informatics Platform</h1>
        <p>Federated analysis on pseudo-anonymized clinical data</p>
      </div>
    </b-container>
    <b-container class="content">
      <router-view :key="$route.fullPath"></router-view>
    </b-container>
    <Footer />
  </div>
</template>

<script>
import Navigation from "./components/Navigation.vue";
import Footer from "./components/Footer.vue";

export default {
  name: "App",
  components: { Footer, Navigation },
};
</script>

<style>
.header {
  background: no-repeat top/100% url("~@/assets/system-2660914_1920.jpg");
  height: 20rem;
}

.header-card {
  width: 960px;
  text-align: center;
  color: white;
}

.header-card h1 {
  font-size: 4rem;
  font-weight: bolder;
}

.header-card p {
  font-size: 1.5rem;
  font-weight: bolder;
}

.content {
  background-color: rgba(255, 255, 255, 0.432);
  margin-top: 2rem;
}
</style>
