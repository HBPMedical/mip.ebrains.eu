<template>
  <b-container>
    <b-row>
      <b-col>
        <ArticlesList :articles="articles"></ArticlesList>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import ArticlesList from "../components/ArticlesList.vue";
import gql from "graphql-tag";

export default {
  components: {
    ArticlesList,
  },
  data() {
    return {
      articles: [],
    };
  },
  apollo: {
    articles: gql`
      query Articles {
        articles {
          id
          title
          content
          image {
            url
          }
          category {
            name
          }
        }
      }
    `,
  },
};
</script>
