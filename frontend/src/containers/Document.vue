<template>
  <b-container>
    <div>
      <Breadcrumb />
      <div class="d-flex align-items-start justify-content-between">
        <div>
          <h2>{{ document.title }}</h2>
          <vue-markdown-it
            v-if="document.content"
            :source="document.content"
            id="editor"
          />
        </div>
        <b-img
          v-if="document.media"
          :src="api_url + document.media.url"
          width="400px"
          right
          :alt="document.title"
        ></b-img>
      </div>
    </div>
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
    };
  },
  components: {
    Breadcrumb,
    VueMarkdownIt,
  },
  apollo: {
    document: gql`
      query Document {
        document(id: 1) {
          id
          title
          content
          media {
            url
          }
        }
      }
    `,
  },
};
</script>
