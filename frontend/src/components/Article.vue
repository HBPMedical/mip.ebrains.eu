<template>
  <b-container>
    <b-row>
      <b-col>
        <h2>{{ article.title }}</h2>
        <b-img
          v-if="article.image"
          :src="api_url + article.image.url"
          fluid
          width="400px"
          right
          :alt="article.title"
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

export default {
  data() {
    return {
      api_url: process.env.VUE_APP_STRAPI_API_URL,
    };
  },
  components: {
    VueMarkdownIt,
  },
  props: {
    article: {},
  },
};
</script>

<style scoped>

</style>
