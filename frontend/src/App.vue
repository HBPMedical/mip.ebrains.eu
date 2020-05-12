<template>
  <div id="app">
    <b-container fluid class="header">
      <b-container>
        <Navigation />
      </b-container>
    </b-container>
    <b-container class="content">
      <router-view :key="$route.fullPath"></router-view>
    </b-container>
  </div>
</template>

<script>
import Navigation from "./components/Navigation.vue";

export default {
  name: "App",
  components: { Navigation },
};
</script>

<style>
.header {
  background: no-repeat top/100% url("~@/assets/body-bg.jpg");
  height: 24rem;
}

.content {
  background-color: #fff;
  margin-top: 2rem;
}
</style>
