<template>
  <div class="d-lg-flex align-items-start justify-content-between">
    <div>
      <vue-markdown-it
        v-if="page.content"
        :source="page.content"
        id="editor"
      />
    </div>
    <b-img
      v-if="page.image"
      :src="api_url + page.image.url"
      width="320px"
      right
      :alt="page.title"
      class="page-img"
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
    page: {},
  },
};
</script>

<style scoped>
.page-img {
  margin-top: 0.5rem;
  margin-bottom: 50px;
}
</style>