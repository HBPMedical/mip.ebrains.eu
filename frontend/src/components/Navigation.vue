<template>
  <div>
    <b-navbar toggleable="lg" type="light" variant="transparent">
      <router-link tag="a" to="/" class="navbar-brand"
        >EBRAINS</router-link
      >
      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav class="ml-auto">
          <router-link tag="b-nav-item" to="/">About</router-link>
          <router-link tag="b-nav-item" to="/documentation"
            >Documentation</router-link
          >
          <router-link tag="b-nav-item" to="/support">Support</router-link>
          <router-link tag="b-nav-item" to="/developer">Developer</router-link>
          <router-link tag="b-nav-item" to="/federation"
            >Federated MIP login</router-link
          >
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>
  </div>
</template>

<script>
export default {
  name: "Navigation",
};
</script>
