<template>
  <b-container class="content">
    <h1 v-if="page.title">{{ page.title }}</h1>
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
        page(id: 1) {
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

