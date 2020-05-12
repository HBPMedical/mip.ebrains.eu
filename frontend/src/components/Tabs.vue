<template>
  <div class="tabs">
    <b-tabs content-class="mt-3" fill>
      <b-tab
        v-for="article in articles"
        :key="article.id"
        :title="article.title"
      >
        <div class="article">
          <Article :article="article"/>
        </div>
      </b-tab>
    </b-tabs>
  </div>
</template>

<script>
import Article from "../components/Article.vue";

export default {
  data: function() {
    return {
      api_url: process.env.VUE_APP_STRAPI_API_URL,
    };
  },
  components: {
    Article,
  },
  props: {
    articles: Array,
  },
};
</script>

<style>
.article {
  margin: 3rem 0;
}

.tabs {
  margin: 1rem 0 3rem 0;
}

.nav-tabs {
  border: 0 solid transparent;
}

.nav-tabs .nav-link,
.nav-tabs .nav-link:focus,
.nav-tabs .nav-link:hover,
.nav-tabs .nav-link:active,
.nav-tabs .nav-link.active {
  border: 0px solid transparent;
  outline: 1px solid transparent;
  border-bottom: 1px solid #dddddd;
}

.nav-tabs a.nav-link {
  color: rgba(0, 0, 0, 0.5);
  font-weight: bold;
}

.nav-tabs a.nav-link:hover {
  color: rgba(0, 0, 0, 0.7);
}

.nav-tabs .nav-item .nav-link.active {
  border-bottom: 5px solid #dddddd;
}

.tab-content img {
  margin: 0 0 16px 16px;
}
</style>
