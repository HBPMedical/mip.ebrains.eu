<template>
  <b-container>
    <div>
      <Breadcrumb />
      <div class="d-flex align-items-start justify-content-between">
        <h2>{{ document.title }}</h2>
        <div v-if="document.media" style="margin: 1.5rem 0 1rem 0;">
          <a :href="api_url + document.media.url" :alt="document.title"
            >Download PDF</a
          >
        </div>
      </div>
    </div>
    <vue-markdown-it
      v-if="document.content"
      :source="document.content"
      id="editor"
    />
  </b-container>
</template>

<script>
import gql from "graphql-tag";
import Breadcrumb from "../components/Breadcrumb.vue";
import VueMarkdownIt from "vue-markdown-it";

export default {
  data() {
    return {
      api_url: process.env.VUE_APP_STRAPI_API_URL,
      document,
      routeParam: this.$route.params.documentid,
    };
  },
  components: {
    Breadcrumb,
    VueMarkdownIt,
  },
  apollo: {
    document: {
      query: gql`
        query Document($id: ID!) {
          document(id: $id) {
            id
            title
            content
            media {
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
