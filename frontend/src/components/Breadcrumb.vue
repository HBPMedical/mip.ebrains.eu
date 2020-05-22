<template>
  <b-breadcrumb :items="items"></b-breadcrumb>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          text: "Documentation",
          to: "/documentation",
        },
        {
          text: this.$route.params.homepagecategory,
          to: "/documentation" + "/" + this.$route.params.homepagecategory,
        },
      ],
    };
  },
};
</script>

<style scoped>
.breadcrumb {
  background-color: white;
  border-bottom: 1px silver solid;
  padding: 0.75rem 0;
}
</style>
