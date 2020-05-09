<template>
  <b-container>
    <b-row>
      <b-col>
        <Header />
        <h2>Documentation</h2>
        <b-card-group deck>
        <b-card
          v-for="categorie in documentcategories"
          :key="categorie.id"
          :title="categorie.name"
          img-src="https://picsum.photos/600/300/?image=25"
          img-alt="Image"
          img-top
          style="max-width: 20rem;"
          class="mb-2"
        >
          <b-list-group flush>
            <b-list-group-item
            v-for="document in categorie.documents"
            :key="document.id"
            :title="document.title"
            :href="api_url + document.content.url"
            target="_blank"
            >
              {{document.title}}
            </b-list-group-item>
          </b-list-group>
        </b-card>
        </b-card-group>
      </b-col>
    </b-row>
  </b-container>
</template>


<script>
import Header from "../components/PageHeader.vue";
import gql from "graphql-tag";


export default {
  components: {
    Header,
  },
  data() {
    return {
      documentcategories: {},
      api_url: process.env.VUE_APP_STRAPI_API_URL,
    };
  },
  apollo: {
    documentcategories: gql`
      query CategoriesAndDocuments{
        documentcategories (sort: "order:asc") {
          id
          name 
          documents (sort: "order:asc") {
            id
            title
            content {
              url
            }
          }
        }
      }
    `,
  },
};
</script>

<style scoped>
.card {
  margin-top: 16px;
}
</style>
