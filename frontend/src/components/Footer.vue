<template>
  <b-navbar class="footer" toggleable="sm" type="white" variant="white">
    <b-collapse id="nav-text-collapse" is-nav>
      <b-navbar-nav>
        <b-nav-text>Copyright © 2022 EBRAINS. All rights reserved.</b-nav-text>
      </b-navbar-nav>
    </b-collapse>

    <b-navbar-nav class="footer-logos ml-auto">
      <img src="~@/assets/eu-fund-logo.png" alt="EU Funding logo" class="img-fluid" />
      <img src="~@/assets/hbp-logo.png" alt="HBP logo" class="img-fluid" />
      <img src="~@/assets/ebrains-logo.png" alt="Ebrains logo" class="img-fluid" />
    </b-navbar-nav>
  </b-navbar>
</template>

<style scoped lang="scss">
.footer {
  height: 70px;
  background-color: #f5f5f5;
  .footer-logos {
    height: 45px;
  }
}

img {
  margin-right: 1rem;
  max-height: 60px;
}
.navbar-text {
  font-size: 0.8rem;
}
</style>
