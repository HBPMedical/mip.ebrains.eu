<template>
  <b-container>
    <Breadcrumb />
     <Article :article="article" />
    <!-- <h2>{{ document.title }}</h2> -->
    <!-- <b-img
          v-if="document.image"
          :src="api_url + document.image.url"
          fluid
          width="400px"
          right
          :alt="document.title"
        ></b-img> -->
    <!-- <vue-markdown-it
      v-if="document.content"
      :source="document.content"
      id="editor"
    /> -->
  </b-container>
</template>

<script>
import Breadcrumb from "../components/Breadcrumb.vue";
import Article from "../components/Article.vue";
// import VueMarkdownIt from "vue-markdown-it";

export default {
  data() {
    return {
      api_url: process.env.VUE_APP_STRAPI_API_URL,
    };
  },
  components: {
    Breadcrumb,
    Article,
    // VueMarkdownIt,
  },
  props: {
    article: {},
  },
};
</script>
