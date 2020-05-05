<template>
  <div>
    <b-navbar toggleable="lg" type="light" variant="transparent">
      <b-navbar-brand href="/">EBRAINS</b-navbar-brand>
      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav class="ml-auto">
          <b-nav-item-dropdown
            v-for="category in categories"
            v-bind:key="category.id"
            v-bind:text="category.name"
            right
          >
            <router-link
              v-for="article in category.articles"
              v-bind:key="article.id"
              v-bind:to="article.id"
              tag="b-dropdown-item"
              active-class="active"
              exact
            >
              <a>{{ article.title }}</a>
            </router-link>
          </b-nav-item-dropdown>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>
  </div>
</template>

<script>
import gql from "graphql-tag";

export default {
  name: "Navigation",
  data() {
    return {
      categories: [],
    };
  },
  apollo: {
    categories: gql`
      query Categories {
        categories {
          id
          name
          articles {
            id
            title
          }
        }
      }
    `,
  },
};
</script>
