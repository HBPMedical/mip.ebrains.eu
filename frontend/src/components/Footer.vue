<template>
  <div>
    <b-navbar
      class="footer"
      fixed="bottom"
      toggleable="sm"
      type="white"
      variant="white"
    >
      <b-navbar-brand>
        <a href="https://www.chuv.ch/" target="_blank"
          ><img
            src="~@/assets/logo_chuv.png"
            alt="CHUV logo"
            width="59px"
            height="31px"
        /></a>
      </b-navbar-brand>

      <b-collapse id="nav-text-collapse" is-nav>
        <b-navbar-nav>
          <b-nav-text>
            © 2015-2020
            <a href="https://www.ebrains.eu" target="_blank"
              >Human Brain Project</a
            >. All right reserved</b-nav-text
          >
        </b-navbar-nav>
      </b-collapse>

      <b-navbar-nav class="ml-auto">
        <b-nav-text>
          <a href="https://twitter.com/HBPMedical" target="_blank"
            ><img
              width="24px"
              src="~@/assets/twitter-logo.png"
              alt="Twitter Logo"/></a
        ></b-nav-text>
      </b-navbar-nav>
    </b-navbar>
  </div>
</template>

<style scoped>
.footer {
  height: 44px;
  border-top: 1px silver solid;
}

.navbar-brand {
  margin-left: 2rem;
}

.navbar-text {
  font-size: 0.8rem;
}

</style>
