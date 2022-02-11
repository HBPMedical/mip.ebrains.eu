<template>
  <div>
    <header>
      <b-navbar
        toggleable="lg"
        type="light"
        variant="white"
        sticky
        class="main-navbar"
      >
        <b-navbar-brand id="navbar-branding"
          ><span>MIP</span> <Logo />
        </b-navbar-brand>

        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

        <b-collapse id="nav-collapse" is-nav>
          <b-navbar-nav class="ml-auto">
            <b-nav-item href="#">Home</b-nav-item>
            <b-nav-item href="#Federations">Federations</b-nav-item>
            <b-nav-item href="#Documentation">Documentation</b-nav-item>
          </b-navbar-nav>
        </b-collapse>
      </b-navbar>
    </header>

    <main>
      <section class="intro">
        <b-container>
          <b-row>
            <b-col cols="12" md="5"
              ><div class="box">
                <div class="title">Medical Informatics Platform</div>
                <span
                  >A powerful federated data processing and analysis system that
                  preserves patient privacy</span
                >
                <a class="link" href="#Federations">See federation</a>
              </div></b-col
            >
            <b-col md="7"
              >
              <div class="box">
                <img class="img-fluid d-none d-md-block" src="@/assets/section1.png"
            /></div></b-col>
          </b-row>
        </b-container>
      </section>
      <section></section>
      <section></section>
    </main>
  </div>
</template>

<script>
import Logo from "../components/Logo.vue";

export default {
  name: "Home",
  components: { Logo },
};
</script>

<style lang="scss">
section {
  &.intro {
    margin-top: 80px;
    .row > div {
      height: 70vh;
      //.box {
              display: flex;
      justify-content: center;
      align-items: center;
      //}
    }
  }
  .box {
    align-self: center;
    padding: 15px;
    .title {
      font-weight: bold;
      font-size: 45px;
      line-height: 45px;
      margin-bottom: 20px;
    }
    .link {
      margin-top: 20px;
      text-transform: uppercase;
      display: block;
    }
    span {
      font-weight: 100;
    }
  }
}

.navbar {
  padding-left: 40px;
  padding-right: 40px;
  margin-top: 10px;
  .nav-item {
    padding: 0 8px;
  }
  .navbar-nav .nav-link {
    color: #0c0c0c;
    &:hover {
      color: #4e4e4e;
    }
  }
}

#navbar-branding {
  font-family: "Roboto", sans-serif;
  font-weight: 100;
  font-size: 48px;
  display: flex;
  align-items: center;

  span {
    border-right: 1px solid;
    padding-right: 15px;
  }
}
</style>
