<template>
  <b-container>
    <b-row>
      <b-col>
        <h2>Documentation</h2>
        <b-card-group deck>
          <b-card
            v-for="categorie in documentcategories"
            :key="categorie.id"
            :title="categorie.name"
            :img-src="api_url + categorie.image.url"
            :img-alt="categorie.name"
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
                {{ document.title }}
              </b-list-group-item>
            </b-list-group>
            <b-list-group flush>
            <b-list-group-item action class="documentation-list"
                v-for="article in categorie.articles"
                :key="article.id"
                :title="article.title"
                v-on:click="displaycontent = article.content;"
                v-b-toggle.display
            >
                {{ article.title }}
            </b-list-group-item>
            </b-list-group>
            <b-list-group flush>
              <b-list-group-item action class="documentation-list"
                v-for="video in categorie.videos"
                :key="video.id"
                :title="video.title"
                @click="$bvModal.show(video.id)"
              >
                {{ video.title }}
              </b-list-group-item>
              <b-modal
                v-for="video in categorie.videos"
                :key="video.id"
                :id="video.id"
                :title="video.title"
                size="lg"
                hide-footer
                centered>
                  <div class="videoWrapper">
                    <iframe
                      :title="video.title"
                      :src="video.source"
                      width="640"
                      height="360"
                      allow="autoplay; fullscreen"
                    ></iframe>
                  </div>
              </b-modal>
            </b-list-group>
          </b-card>
        </b-card-group>
        <b-collapse id="display">
          <p> {{ displaycontent }} </p>          
        </b-collapse>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import gql from "graphql-tag";

export default {
  data() {
    return {
      documentcategories: {},
      displaycontent: "",
      api_url: process.env.VUE_APP_STRAPI_API_URL,
    };
  },
  apollo: {
    documentcategories: gql`
      query CategoriesAndDocuments {
        documentcategories(sort: "order:asc") {
          id
          name
          image {
            url
          }
          documents(sort: "order:asc") {
            id
            title
            content {
              url
            }
          }
          videos(sort: "order:asc") {
            id
            title
            source
          }
          articles(sort: "order:asc") {
            id
            title
            content
            image {
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
.documentation-list {
  cursor: pointer;
}
.videoWrapper {
  position: relative;
  padding-bottom: 56.25%; /* 16:9 */
  height: 0;
}
.videoWrapper iframe {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border: none;
}
</style>
