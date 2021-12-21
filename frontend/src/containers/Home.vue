<template>
  <div>
    <b-container
      fluid
      class="header d-flex align-items-center justify-content-center"
    >
      <div class="header-card">
        <h1>The Medical Informatics Platform</h1>
        <p>Secure federated analysis on clinical data</p>
      </div>
      
    </b-container>
    <div class="border-mip"></div>
    <b-container class="content">
      <div class="moved">
        <div>The documentation moved to Github <a href="https://github.com/HBPMedical/mip-docs/">https://github.com/HBPMedical/mip-docs/</a></div>
      </div>
    </b-container>
  </div>
</template>

<script>
import gql from "graphql-tag";

export default {
  data() {
    return {
      articles: [],
    };
  },
  apollo: {
    articles: gql`
      query Articles {
        articles(
          sort: "order:asc"
        ) {
          id
          title
          content
          image {
            url
          }
        }
      }
    `,
  },
};
</script>

<style scoped>
.moved {
  margin-top: 8rem;
  display: flex;
  justify-content: center;
  align-items: center;
}

.header {
  background: no-repeat top/cover url("~@/assets/system-2660914_1920.jpg");
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
  color: white;
}

.header-card p {
  font-size: 1.5rem;
  font-weight: bolder;
}

</style>
