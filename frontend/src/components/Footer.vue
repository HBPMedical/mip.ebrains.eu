<template>
  <b-navbar
    class="footer"
    toggleable="sm"
    type="white"
    variant="white"
  >
    <b-collapse id="nav-text-collapse" is-nav>
      <b-navbar-nav>
        <b-nav-text> Copyright © 2021 EBRAINS. All rights reserved.</b-nav-text>
      </b-navbar-nav>
    </b-collapse>

    <b-navbar-nav class="ml-auto">
      <img
        src="~@/assets/hbp-logo.png"
        alt="HBP logo"
        width="60px"
        height="60px"
      />
      <img
        src="~@/assets/eu-fund-logo.png"
        alt="HBP logo"
        width="250px"
        height="60px"
      />
    </b-navbar-nav>
  </b-navbar>
</template>

<style scoped>
.footer {
  height: 70px;
  border-top: 1px #f0f0f0 solid;
  background-color: #f5f5f5;
  
}

img {
  margin-right: 1rem;
}
.navbar-text {
  font-size: 0.8rem;
}
</style>
