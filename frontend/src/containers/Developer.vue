<template>
  <b-container class="content">
    <b-container v-for="article in articles" :key="article.id">
      <Article :article="article" />
    </b-container>
  </b-container>
</template>

<script>
import gql from "graphql-tag";
import Article from "../components/Article.vue";

export default {
  components: {
    Article,
  },
  data() {
    return {
      articles: [],
      api_url: process.env.VUE_APP_STRAPI_API_URL,
    };
  },
  apollo: {
    articles: gql`
      query Articles {
        articles(
          where: { category: { name_contains: "developer" } }
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

