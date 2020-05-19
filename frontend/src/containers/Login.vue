<template>
  <b-container class="content">
    <div class="d-flex align-items-start justify-content-between">
      <h1 v-if="page">{{ page.title }}</h1>
      <div class="login-btn">
        <a
          style="margin: 1rem 0;"
          class="btn btn-primary"
          href="https://mip.humanbrainproject.eu"
          >Log In</a
        >
      </div>
    </div>
    <Page v-if="page" :page="page" />
  </b-container>
</template>

<script>
import gql from "graphql-tag";
import Page from "../components/Page.vue";

export default {
  components: {
    Page,
  },
  data() {
    return {
      api_url: process.env.VUE_APP_STRAPI_API_URL,
      categories: [],
    };
  },
  apollo: {
    page: gql`
      query {
        page(id: 2) {
          title
          image {
            url
          }
          content
        }
      }
    `,
  },
};
</script>

<style scoped>
.login-btn {
  margin-top: 1rem;
}
</style>
