<template>
  <b-card title="Dementia" class="card-fed">
    <div class="card-subtitle mb-2 text-muted">
      <span>
        <b-icon-diagram-2></b-icon-diagram-2>
      </span>
      <span>
        <b-icon-people-fill></b-icon-people-fill>
      </span>
      <span>
        <b-icon-info-circle></b-icon-info-circle>
      </span>
    </div>
    <b-card-text>
      <v-clamp autoresize :max-lines="5"
        >{{ description }}
        <template v-slot:after="slotProps">
          <b-button
            size="sm"
            variant="link"
            v-if="slotProps.clamped || slotProps.expanded"
            v-on:click="slotProps.toggle()"
          >
            {{ slotProps.clamped ? "see more" : "see less" }}</b-button
          >
        </template>
      </v-clamp>
    </b-card-text>
    <a v-if="link" :href="link" class="link">Access federation</a>
    <a v-else>UPCOMING...</a>
  </b-card>
</template>

<script>
import VClamp from "vue-clamp";
import { BIconDiagram2, BIconPeopleFill, BIconInfoCircle } from "bootstrap-vue";

export default {
  components: { VClamp, BIconDiagram2, BIconPeopleFill, BIconInfoCircle },
  name: "CardFederation",
  props: {
    title: String,
    description: String,
    available: {
      type: Boolean,
      default: true,
    },
    databases: Array,
    nbRecords: Number,
    link: String,
  },
  data() {
    return {
      open: false,
    };
  },
};
</script>

<style lang="scss">
.card-fed {
  min-width: 200px;
  max-width: 30%;
  width: 400px;
  background: #ffffff;
  box-shadow: 0px 5px 27px rgba(0, 0, 0, 0.1);
  border-radius: 12px;
  border: none;

  .link {
    text-align: right;
  }

  .card-body p,
  .card-body span {
    color: rgba(0, 0, 0, 0.6);
    font-weight: 300;
    text-align: justify;
  }

  .card-title {
    padding: 0;
    font-size: 20px;
    color: black;
  }
}
</style>
