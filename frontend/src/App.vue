<template>
  <div id="app">
    <Navigation />
    <router-view :key="$route.fullPath" class="content"></router-view>
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

<style scoped>
#app {
  display: flex;
  min-height: 100vh;
  flex-direction: column;
  justify-content: space-between;
}

.content {
  flex-grow: 1;
}
</style>
