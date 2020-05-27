<template>
  <b-container class="content">
    <h1>Documentation</h1>
    <b-card-group deck>
      <b-card
        v-for="category in documentcategories"
        :key="category.id"
        :title="category.name"
        :img-src="api_url + category.image.url"
        :img-alt="category.name"
        img-top
        style="max-width: 20rem;"
        class="mb-2"
      >
        <b-list-group flush>
          <b-list-group-item
            v-for="document in category.documents"
            :key="document.id"
          >
            <router-link
              :to="'/documentation/' + category.name + '/' + document.id"
              class="card-link"
            >
              {{ document.title }}
            </router-link>
          </b-list-group-item>
        </b-list-group>
        <b-list-group flush>
          <b-list-group-item
            action
            class="documentation-list"
            v-for="video in category.videos"
            :key="video.id"
            :title="video.title"
            @click="$bvModal.show(video.id)"
          >
            <a class="card-link">{{ video.title }}</a>
          </b-list-group-item>
          <b-modal
            v-for="video in category.videos"
            :key="`list-${video.id}`"
            :id="video.id"
            :title="video.title"
            size="lg"
            hide-footer
            centered
          >
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
  </b-container>
</template>

<script>
import gql from "graphql-tag";

export default {
  data() {
    return {
      documentcategories: {},
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
            media {
              url
            }
          }
          videos(sort: "order:asc") {
            id
            title
            source
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

.card-link {
  color: #007bff;
}

.documentation-list {
  cursor: pointer;
}

.list-group-item {
  padding: 0.75rem 0;
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

.content {
  margin-bottom: 50px;
}
</style>
