<template>
  <div class="flex items-center justify-center w-64 h-64">
    <sunburst :data="tree" class="w-64 h-64">
      <!-- Add behaviors -->
      <template slot-scope="{ on, actions }">
        <highlightOnHover v-bind="{ on, actions }" />
        <zoomOnClick v-bind="{ on, actions }" />
      </template>

      <!-- Add information to be displayed on top the graph -->
      <nodeInfoDisplayer
        slot="top"
        slot-scope="{ nodes }"
        :current="nodes.mouseOver"
        :root="nodes.root"
        description="of visits begin with this sequence of pages"
      />

      <!-- Add bottom legend -->
      <breadcrumbTrail
        slot="legend"
        slot-scope="{ nodes, colorGetter, width }"
        :current="nodes.mouseOver"
        :root="nodes.root"
        :colorGetter="colorGetter"
        :from="nodes.clicked"
        :width="width"
      />
    </sunburst>
    {{ error }}
  </div>
</template>

<script>
import axios from 'axios'

import {
  breadcrumbTrail,
  highlightOnHover,
  nodeInfoDisplayer,
  sunburst,
  zoomOnClick
} from 'vue-d3-sunburst'
import 'vue-d3-sunburst/dist/vue-d3-sunburst.css'

export default {
  components: {
    breadcrumbTrail,
    highlightOnHover,
    nodeInfoDisplayer,
    sunburst,
    zoomOnClick
  },
  data() {
    return {
      error: null,
      balance: null,
      tree: {
        name: 'flare',
        children: [
          {
            name: 'Binance',
            children: [{}]
          }
        ]
      }
    }
  },
  mounted() {
    axios
      .get(`http://${location.host}/api/v1/balance`)
      .then((response) => {
        this.balance = response.data.data.balances
        response.data.data.balances.map((value, key) => {
          this.tree.children[0].children.push({
            name: value.asset,
            size: parseFloat(value.free) + parseFloat(value.locked)
          })
        })
      })
      .catch((error) => console.log(error))
  },
  methods: {}
}
</script>

<style scoped></style>
