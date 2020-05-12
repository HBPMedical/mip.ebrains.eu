<template>
  <b-container>
    <b-row>
      <b-col>
        <Tabs :articles="articles"></Tabs>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import Tabs from "../components/Tabs.vue";

import gql from "graphql-tag";

export default {
  components: {
    Tabs,
  },
  data() {
    return {
      articles: [],
    };
  },
  apollo: {
    articles: gql`
      query Articles {
        articles(
          where: { category: { name_contains: "about" } }
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
