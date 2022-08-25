<template>
  <b-card :title="title" class="card-fed">
    <div class="card-subtitle mb-2 text-muted">
      <span v-if="nodes" :title="nodes.join(' | ')" :id="toolTipId">
        <b-icon-diagram-2></b-icon-diagram-2>
        {{ (nbNodes ? nbNodes : nodes.length) }}
      </span>
      <span v-if="nbRecords" v-b-tooltip.hover title="Number of records">
        <b-icon-people-fill></b-icon-people-fill>
        {{ nbRecords.toLocaleString() }}
      </span>
      <span v-if="version" v-b-tooltip.hover title="Installed version">
        <b-icon-info-circle></b-icon-info-circle>
        {{ version }}
      </span>
      <b-tooltip :target="toolTipId" v-if="nodes && nodes.length > 0" customClass="large-tooltip">
        <ul class="pl-4 text-left mt-2 mr-1">
          <li v-for="(node, index) in nodes" :key="index">
            {{ node }}
          </li>
        </ul>
      </b-tooltip>
    </div>
    <b-card-text>
      <v-clamp autoresize :max-lines="5"
        >{{ description }}
        <template v-slot:after="slotProps">
          <b-button
            size="sm"
            class="more shadow-none text-decoration-none"
            variant="link"
            v-if="slotProps.clamped || slotProps.expanded"
            v-on:click="slotProps.toggle()"
          >
            {{ slotProps.clamped ? "see more" : "see less" }}</b-button
          >
        </template>
      </v-clamp>
    </b-card-text>
    <a v-if="link" :href="link" class="link" target="_blank" ref="noopener noreferrer">Access federation</a>
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
    id: Number,
    title: String,
    description: String,
    nodes: Array,
    nbRecords: Number,
    link: String,
    version: String,
    nbNodes: Number
  },
  data() {
    return {
      open: false,
      toolTipId: `tooltip-${this.id}`
    };
  },
};
</script>

<style lang="scss" scoped>
.card-fed {
  min-width: 300px;
  width: 400px;
  background: #ffffff;
  box-shadow: 0px 5px 27px rgba(0, 0, 0, 0.1);
  border-radius: 12px;
  border: none;

  .link {
    text-align: right;
    margin-top: auto;
  }

  .btn-link.more:focus {
    outline: none;
  }

  .card-body {
    height: 100%;
    display: flex;
    flex-direction: column;
    flex-wrap: nowrap;
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

  .card-subtitle span {
    padding-right: 8px;
  }
}
</style>
