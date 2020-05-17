<template>
  <b-container class="content">
    <Category :categories="categories" />
  </b-container>
</template>

<script>
import gql from "graphql-tag";
import Category from "../components/Category.vue";

export default {
  components: {
    Category,
  },
  data() {
    return {
      api_url: process.env.VUE_APP_STRAPI_API_URL,
      categories: [],
    };
  },
  apollo: {
    categories: gql`
      query {
        categories(where: { name_contains: "developer" }) {
          name
          media {
            url
          }
          articles {
            title
            content
            image {
              url
            }
          }
        }
      }
    `,
  },
};
</script>

<style scoped>
.image-hero {
  width: 100%;
  height: 240px;
  margin-bottom: 3rem;
}
</style>
