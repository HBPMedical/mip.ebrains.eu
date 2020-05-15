<template>
  <b-breadcrumb :items="items"></b-breadcrumb>
</template>

<script>
  export default {
    data() {
      return {
        items: [
          {
            text: 'Documentation',
            to: '/documentation'
          },
                    {
            text: this.$route.params.articlecategory,
            to: '/documentation' + '/' + this.$route.params.articlecategory
          },
          {
            text: this.$route.params.articletitle,
            active: true
          }
        ]
      }
    }
  }
</script>