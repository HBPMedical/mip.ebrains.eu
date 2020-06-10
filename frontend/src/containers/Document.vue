<template>
  <b-container>
    <div>
      <Breadcrumb />
      <div>
        <h2>{{ document.title }}</h2>
        <div v-if="document.media" style="margin-bottom: 1rem">
          <a :href="api_url + document.media.url" :alt="document.title"
            ><b-icon class="h2 mb-0" icon="file-earmark-arrow-down"></b-icon
            >Download PDF</a
          >
        </div>
      </div>
    </div>
    <vue-markdown-it
      v-if="document.content"
      :source="document.content"
      id="editor"
      class="document-markdown"
    />
    <b-img
      v-else
      fluid
      style="margin-top: 2rem"
      src="~@/assets/system-2660914_1920.jpg"
    ></b-img>
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

<style scoped>
.document-markdown >>> h1,
.document-markdown >>> h2,
.document-markdown >>> h3,
.document-markdown >>> h4,
.document-markdown >>> h5,
.document-markdown >>> h6 {
  color: #000;
  margin: 1rem 0 0.5rem 0;
  padding: 0;
  font-weight: 900;
}

.document-markdown >>> h1 {
  font-size: 1.5rem;
}

.document-markdown >>> h2 {
  font-size: 1.3rem;
}

.document-markdown >>> h3 {
  font-size: 1.2rem;
}

.document-markdown >>> h4 {
  font-size: 1.1rem;
}

.document-markdown >>> p {
  margin: 0;
  padding: 0;
}

.document-markdown >>> .table td,
.document-markdown >>> .table th {
  padding: 0.4rem;
}
</style>
