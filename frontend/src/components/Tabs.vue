<template>
  <b-tabs content-class="mt-3" fill>
    <b-tab
      v-for="article in articles"
      :key="article.id"
      v-bind:title="article.title"
    >
      <div>
        <h2>{{ article.title }}</h2>
        <b-img
          v-if="article.image"
          v-bind:src="api_url + article.image.url"
          fluid
          width="200px"
          right
          v-bind:alt="article.title"
        ></b-img>
        <vue-markdown-it
          v-if="article.content"
          :source="article.content"
          id="editor"
        /></div
    ></b-tab>
  </b-tabs>
</template>

<script>
import VueMarkdownIt from "vue-markdown-it";
export default {
  data: function() {
    return {
      api_url: process.env.VUE_APP_STRAPI_API_URL,
    };
  },
  components: {
    VueMarkdownIt,
  },
  props: {
    articles: Array,
  },
};
</script>

<style scoped>
.tabs {
  margin: 16px 0;
}

</style>
