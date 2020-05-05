<template>
  <b-container>
    <b-row>
      <b-col>
        <h2>{{ article.title }}</h2>
        <b-img
          v-if="article.image"
          v-bind:src="api_url + article.image.url"
          fluid
          left
          v-bind:alt="article.title"
        ></b-img>
        <vue-markdown-it
          v-if="article.content"
          :source="article.content"
          id="editor"
        />
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import VueMarkdownIt from "vue-markdown-it";
import gql from "graphql-tag";

export default {
  data() {
    return {
      article: {},
      api_url: process.env.VUE_APP_STRAPI_API_URL,
      routeParam: this.$route.params.id,
    };
  },
  components: {
    VueMarkdownIt,
  },
  apollo: {
    article: {
      query: gql`
        query Articles($id: ID!) {
          article(id: $id) {
            id
            title
            content
            image {
              url
            }
          }
        }
      `,
      variables() {
        return {
          id: this.routeParam,
        };
      },
    },
  },
};
</script>
