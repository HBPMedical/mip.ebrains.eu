<template>
  <div>
    <div v-for="category in categories" :key="category.id">
      <b-card
        overlay
        v-if="category.media"
        :img-src="api_url + category.media.url"
        :img-alt="category.name"
        text-variant="white"
        :title="category.name"
        class="hero-card"
      >
        <b-card-text v-if="category.description">
          <vue-markdown-it :source="category.description" id="editor" />
        </b-card-text>
      </b-card>
      <h1 v-else-if="category.name">{{ category.name }}</h1>

      <Article
        v-for="article in category.articles"
        :key="article.id"
        :article="article"
      />
    </div>
  </div>
</template>

<script>
import Article from "../components/Article.vue";
import VueMarkdownIt from "vue-markdown-it";

export default {
  data() {
    return {
      api_url: process.env.VUE_APP_STRAPI_API_URL,
    };
  },
  components: {
    Article,
    VueMarkdownIt
  },
  props: {
    categories: [],
  },
};
</script>

<style scoped>
.hero-card {
  margin-bottom: 3rem;
}

.card-img  {
  filter: brightness(80%);
}

h4 {
  color: white;
  font-weight: 400;
}

h4 {
  font-size: 2.5rem;
  margin-bottom: 2rem;
}
</style>
