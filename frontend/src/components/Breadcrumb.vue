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
            href: '/documentation'
          },
          {
            text: this.$route.params.articleid,
            active: true
          }
        ]
      }
    }
  }
</script>