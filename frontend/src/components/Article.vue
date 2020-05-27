<template>
  <div class="d-lg-flex align-items-start justify-content-between">
    <div>
      <h2>{{ article.title }}</h2>
      <vue-markdown-it
        v-if="article.content"
        :source="article.content"
        id="editor"
      />
    </div>
    <b-img
      v-if="article.image"
      :src="api_url + article.image.url"
      width="400px"
      right
      class="article-img"
      :alt="article.title"
    ></b-img>
  </div>
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
h2 {
  padding-top: 0;
}

.article-img {
  margin-top: 0.5rem;
  margin-bottom: 50px;
}
</style>
