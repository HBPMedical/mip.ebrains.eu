<template>
  <div>
    <b-navbar
      toggleable="lg"
      type="light"
      variant="white"
      sticky
      class="main-navbar"
    >
      <a href="https://www.ebrains.eu" class="navbar-brand"
        ><svg
          width="40"
          height="40"
          aria-labelledby="box"
          viewBox="0 0 554 205"
          role="presentation"
          fill="grey"
          xmlns="http://www.w3.org/2000/svg"
          preserveAspectRatio="xMinYMid meet"
          class="ebrains-logo-web"
        >
          <defs>
            <linearGradient
              id="linear-gradient"
              x1="0.50"
              y1="100"
              x2="200"
              y2="100"
              gradientUnits="userSpaceOnUse"
            >
              <stop offset="0" stop-color="#f7db2e"></stop>
              <stop offset="0.5" stop-color="#82c558"></stop>
              <stop offset="1" stop-color="#127e7a"></stop>
            </linearGradient>
          </defs>
          <title>EBRAINS logo</title>
          <g>
            <polyline
              points="101.6 0 50.9 13.9 13.9 51.2 0.5 102.1 14.4 152.8 51.3 189.6 102.1 205.2 153.3 189.3 190.1 152.4 203.7 101.1 189.8 50.3 152.4 13.4 101.6 0"
              class="logo__background"
            ></polyline>
            <g>
              <path
                d="M256.4,76.4h32.8v6.8H264.3V99.1h23.2v6.8H264.3V122h25.2v6.8H256.4Z"
                class="logo__text"
              ></path>
              <path
                d="M299.8,76.4H319c11.1,0,16.5,6,16.5,13.7s-4,9.9-8.8,11.1v.5c5.1.3,10.8,4.9,10.8,13s-5.5,14.1-17.7,14.1h-20ZM318.3,99c5.3,0,9.4-3.2,9.4-8.2s-3-7.7-9.2-7.7H307.7V99Zm.8,23c7.6,0,10.6-3.3,10.6-7.7s-4-9.1-10.3-9.1H307.7V122Z"
                class="logo__text"
              ></path>
              <path
                d="M346.9,76.4h18.6c12.2,0,18.2,6.8,18.2,16.4,0,7-3.2,12.4-9.6,14.8l11.6,21.2h-9L366,108.9H354.8v19.9h-7.9Zm17.9,25.7c7.7,0,10.9-3.4,10.9-9.3s-3.2-9.6-11-9.6h-9.9v18.9Z"
                class="logo__text"
              ></path>
              <path
                d="M389.3,128.8l18.9-52.4h9.1l18.9,52.4h-8.4L423,114.9H402.5l-4.8,13.9Zm31.4-20.6L413,85.9h-.4l-7.8,22.3Z"
                class="logo__text"
              ></path>
              <path d="M451.6,128.8h-7.9V76.4h7.9Z" class="logo__text"></path>
              <path
                d="M505.4,128.8h-7.3L471.5,90.3H471v38.5h-7.9V76.4h7.3l26.7,38.4h.5V76.4h7.8Z"
                class="logo__text"
              ></path>
              <path
                d="M534.6,82.5c-6.4,0-10.5,3.3-10.5,7.7s5.4,7,9.5,8l5.1,1.3c6.7,1.7,15.1,5.3,15.1,14.8s-7.1,15.3-19.4,15.3-19.1-5.8-19.6-15.3h7.9c.5,5.7,5.6,8.4,11.6,8.4s11.7-3.4,11.7-8.5-4.4-6.5-10-8l-6.2-1.7c-8.4-2.2-13.6-6.5-13.6-13.8,0-9,8.1-15,18.6-15s18,6,18.3,14.4h-7.7C544.9,85.3,540.6,82.5,534.6,82.5Z"
                class="logo__text"
              ></path>
            </g>
            <g>
              <path
                d="M187.7,154.7c-5.9-1.7-11.8-3.6-17.6-5.8-16.9-6.4-30.8-17.9-47.8-23.9-15.5-5.5-31.9-9-48.2-11.7a71.2,71.2,0,0,0-11.3-1.4c-10.4.1-18.2,6.6-23.7,14.8s-14,20.6-24.2,26.6"
                class="logo__lines"
              ></path>
              <path
                d="M190.4,151.2c-6.7-1.9-13.3-4-19.8-6.4-16.6-6.1-30.5-16.7-46.8-23.6-13.5-5.6-27.4-11-41.4-15s-27.2,2.4-37.9,12.1a240.6,240.6,0,0,1-20.6,17.2,121,121,0,0,1-12.1,8.1"
                class="logo__lines--thin"
              ></path>
              <path
                d="M191.4,147.2c-7.1-1.9-14.2-4.1-21.2-6.6-15.9-5.8-29.7-16.6-44.4-24.9-11.7-6.6-25.9-17.4-39.7-18.9C70,95.1,58.6,105,45.9,112.9c-8.5,5.2-17.1,10.4-25.9,15.2-3.2,1.6-6.9,4-10.8,5.8"
                class="logo__lines--thin"
              ></path>
              <path
                d="M192.4,143.6a220.2,220.2,0,0,1-22.7-6.9c-16.6-6.3-30.5-20.6-44.1-31.6S98.2,81.5,79.1,90c-11.5,5.1-22.6,11-34,16.4-9.6,4.5-19.3,9.1-29.1,13.3-2.8,1.2-6.1,3-9.5,4.4"
                class="logo__lines"
              ></path>
              <path
                d="M193.4,139.8a161.6,161.6,0,0,1-25.4-7.7c-20.1-8.3-29.7-29.2-42.3-45.4C115.3,73.2,98.2,77.9,85,83L37.4,101.3c-8.9,3.3-17.7,6.7-26.6,9.9-2,.8-4.5,2-7,2.9"
                class="logo__lines--thin"
              ></path>
              <path
                d="M194.9,134c-10.5-2-20.8-4.7-30.1-9.7-15.5-8.5-21.6-27-30.9-41.1-6.4-9.6-18-15.5-29.4-12.4-4.7,1.3-9.3,3-14,4.5L33,93.7,1,103.9"
                class="logo__lines"
              ></path>
              <path
                d="M196.6,127.7c-11.9-3.6-23.5-7.9-33.7-15.6-13.3-10-23.4-24.7-34.5-36.9s-26-12.1-40.7-7C70.4,74.1,53.2,80.1,36,86.4,26,90,16.1,93.7,6.3,97.6c-1.3.6-3.1,1.1-5.1,1.8"
                class="logo__lines--thin"
              ></path>
              <path
                d="M199.7,116.2c-11-4.2-21.8-8.5-32-14.5-16-9.4-29-22.8-43.1-34.8s-28-11.4-43.7-5.5S50.2,73,35,79.4C26,83.1,17,87,8.3,91.3L2.6,94"
                class="logo__lines"
              ></path>
              <path
                d="M203.1,103.3C177.5,90.6,152.7,76.9,128,62.5,113,53.7,98.4,46,80.4,52.3,68.6,56.4,57,61.4,45.6,66.4s-20,8.9-29.5,14.1a120.4,120.4,0,0,0-11.7,7"
                class="logo__lines"
              ></path>
              <path
                d="M201.6,93.6c-11.7-7.2-23.5-14.3-35.9-20.3S140.6,62.1,128,56.7,101.9,43.6,86.9,44.1,60.3,51.5,48.1,57.5,17.8,71.5,5.7,82.3"
                class="logo__lines--thin"
              ></path>
              <path
                d="M198.4,81.9c-10.5-8-20.9-15.6-33.2-21.1s-23.9-8-35.8-11.5-22.1-7.1-33.3-10c-16-4.1-31.2.9-45.2,8.1S19.7,64.4,7.1,76.6"
                class="logo__lines"
              ></path>
            </g>
          </g>
        </svg>
      </a>
      <router-link tag="a" to="/" class="navbar-brand">
        <h1>MIP - Medical Informatics Platform</h1>
      </router-link>
      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    </b-navbar>
  </div>
</template>

<script>
export default {
  name: "Navigation",
};
</script>

<style scoped>
.main-navbar {
  border-bottom: 1px silver solid;
  background-color: rgba(73, 33, 33, 0.2);
}

#app nav h1 {
  font-weight: bold;
  font-size: 1rem;
  display: inline;
  margin: 0 0 0 1rem;
}

svg.ebrains-logo-web {
  height: 60px;
  min-width: 160px;
}

.ebrains-logo-web {
  transform: none !important;
}

.logo__background {
  fill: url(#linear-gradient);
}

.logo__lines {
  stroke-width: 3px;
}

.logo__lines,
.logo__lines--thin {
  fill: none;
  stroke: #fff;
  stroke-linecap: round;
  stroke-linejoin: round;
}

.logo__text {
  fill: currentColor;
}
</style>
