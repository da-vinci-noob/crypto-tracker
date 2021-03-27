<template>
  <div class="font-sans leading-normal tracking-normal">
    <nav id="header" class="fixed top-0 z-10 w-full bg-gray-900 shadow">
      <div
        class="container flex flex-wrap items-center w-full pt-3 pb-3 mx-auto mt-0 md:pb-0"
      >
        <div class="w-1/2 pl-2 md:pl-0">
          <a
            class="text-base font-bold text-gray-100 no-underline xl:text-xl hover:no-underline"
            href="#"
          >
            <i class="text-blue-400"></i> CryptoCurrencies Balance
          </a>
        </div>
        <div class="w-1/2 pr-0">
          <div class="relative flex float-right">
            <div class="relative text-sm text-gray-100">
              <button
                id="userButton"
                class="flex items-center mr-3 focus:outline-none"
              >
                <img
                  class="w-8 h-8 mr-4 rounded-full"
                  src="http://i.pravatar.cc/300"
                  alt="Avatar of User"
                />
                <span class="hidden text-gray-100 md:inline-block"
                  >Hi, User</span
                >
                <svg
                  class="h-2 pl-2 text-gray-100 fill-current"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 129 129"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  enable-background="new 0 0 129 129"
                >
                  <g>
                    <path
                      d="m121.3,34.6c-1.6-1.6-4.2-1.6-5.8,0l-51,51.1-51.1-51.1c-1.6-1.6-4.2-1.6-5.8,0-1.6,1.6-1.6,4.2 0,5.8l53.9,53.9c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2l53.9-53.9c1.7-1.6 1.7-4.2 0.1-5.8z"
                    />
                  </g>
                </svg>
              </button>
              <div
                id="userMenu"
                class="absolute top-0 right-0 z-30 invisible min-w-full mt-2 mt-12 overflow-auto bg-gray-900 rounded shadow-md"
              >
                <ul class="list-reset">
                  <li>
                    <a
                      href="#"
                      class="block px-4 py-2 text-gray-100 no-underline hover:bg-gray-800 hover:no-underline"
                      >My account</a
                    >
                  </li>
                  <li>
                    <a
                      href="#"
                      class="block px-4 py-2 text-gray-100 no-underline hover:bg-gray-800 hover:no-underline"
                      >Notifications</a
                    >
                  </li>
                  <li><hr class="mx-2 border-t border-gray-400" /></li>
                  <li>
                    <a
                      href="#"
                      class="block px-4 py-2 text-gray-100 no-underline hover:bg-gray-800 hover:no-underline"
                      >Logout</a
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div
          class="z-20 flex-grow hidden w-full mt-2 bg-gray-900 lg:flex lg:items-center lg:w-auto lg:block lg:mt-0"
          id="nav-content"
        >
          <ul class="items-center flex-1 px-4 list-reset lg:flex md:px-0">
            <li class="my-2 mr-6 md:my-0">
              <a
                href="#"
                class="block py-1 pl-1 text-blue-400 no-underline align-middle border-b-2 border-blue-400 md:py-3 hover:text-gray-100 hover:border-blue-400"
              >
                <i class="mr-3 text-blue-400 fas fa-home fa-fw"></i
                ><span class="pb-1 text-sm md:pb-0">Home</span>
              </a>
            </li>
            <li class="my-2 mr-6 md:my-0">
              <a
                href="#"
                class="block py-1 pl-1 text-gray-500 no-underline align-middle border-b-2 border-gray-900 md:py-3 hover:text-gray-100 hover:border-pink-400"
              >
                <i class="mr-3 fas fa-tasks fa-fw"></i
                ><span class="pb-1 text-sm md:pb-0">Tasks</span>
              </a>
            </li>
            <li class="my-2 mr-6 md:my-0">
              <a
                href="#"
                class="block py-1 pl-1 text-gray-500 no-underline align-middle border-b-2 border-gray-900 md:py-3 hover:text-gray-100 hover:border-purple-400"
              >
                <i class="mr-3 fa fa-envelope fa-fw"></i
                ><span class="pb-1 text-sm md:pb-0">Messages</span>
              </a>
            </li>
            <li class="my-2 mr-6 md:my-0">
              <a
                href="#"
                class="block py-1 pl-1 text-gray-500 no-underline align-middle border-b-2 border-gray-900 md:py-3 hover:text-gray-100 hover:border-green-400"
              >
                <i class="mr-3 fas fa-chart-area fa-fw"></i
                ><span class="pb-1 text-sm md:pb-0">Analytics</span>
              </a>
            </li>
            <li class="my-2 mr-6 md:my-0">
              <a
                href="#"
                class="block py-1 pl-1 text-gray-500 no-underline align-middle border-b-2 border-gray-900 md:py-3 hover:text-gray-100 hover:border-red-400"
              >
                <i class="mr-3 fa fa-wallet fa-fw"></i
                ><span class="pb-1 text-sm md:pb-0">Payments</span>
              </a>
            </li>
          </ul>

          <div class="relative pl-4 pr-4 pull-right md:pr-0">
            <input
              type="search"
              placeholder="Search"
              class="w-full px-2 py-1 pl-10 text-sm leading-normal text-gray-400 transition bg-gray-900 border border-gray-800 rounded appearance-none focus:outline-none focus:border-gray-600"
            />
            <div
              class="absolute search-icon"
              style="top: 0.375rem; left: 1.75rem;"
            >
              <svg
                class="w-4 h-4 text-gray-500 pointer-events-none fill-current"
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 20 20"
              >
                <path
                  d="M12.9 14.32a8 8 0 1 1 1.41-1.41l5.35 5.33-1.42 1.42-5.33-5.34zM8 14A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"
                ></path>
              </svg>
            </div>
          </div>
        </div>
      </div>
    </nav>

    <!--Container-->
    <div class="container w-full pt-20 mx-auto">
      <div
        class="w-full px-4 mb-16 leading-normal text-gray-200 md:px-0 md:mt-8"
      >
        <!--Console Content-->

        <div class="flex flex-wrap">
          <div class="w-full p-3 md:w-1/2 xl:w-1/3">
            <!--Metric Card-->
            <div class="p-2 bg-gray-900 border border-gray-800 rounded shadow">
              <div class="flex flex-row items-center">
                <div class="flex-shrink pr-4">
                  <div class="p-3 bg-green-600 rounded">
                    <i class="fa fa-wallet fa-2x fa-fw fa-inverse"></i>
                  </div>
                </div>
                <div class="flex-1 text-right md:text-center">
                  <h5 class="font-bold text-gray-400 uppercase">
                    Total Connected Exchanges
                  </h5>
                  <h3 class="text-3xl font-bold text-gray-600">
                    1
                    <span class="text-green-500"
                      ><i class="fas fa-caret-up"></i
                    ></span>
                  </h3>
                </div>
              </div>
            </div>
            <!--/Metric Card-->
          </div>
          <div class="w-full p-3 md:w-1/2 xl:w-1/3">
            <!--Metric Card-->
            <div class="p-2 bg-gray-900 border border-gray-800 rounded shadow">
              <div class="flex flex-row items-center">
                <div class="flex-shrink pr-4">
                  <div class="p-3 bg-pink-600 rounded">
                    <i class="fas fa-users fa-2x fa-fw fa-inverse"></i>
                  </div>
                </div>
                <div class="flex-1 text-right md:text-center">
                  <h5 class="font-bold text-gray-400 uppercase">Total Coins</h5>
                  <h3 class="text-3xl font-bold text-gray-600">
                    {{ this.balance == null ? 0 : this.balance.length }}
                    <span class="text-pink-500"
                      ><i class="fas fa-exchange-alt"></i
                    ></span>
                  </h3>
                </div>
              </div>
            </div>
            <!--/Metric Card-->
          </div>
        </div>

        <!--Divider-->
        <hr class="mx-4 my-8 border-b-2 border-gray-600" />

        <div class="flex flex-row flex-wrap flex-grow mt-2">
          <div class="w-full p-3 md:w-1/2">
            <!--Graph Card-->
            <div class="bg-gray-900 border border-gray-800 rounded shadow">
              <div class="p-3 border-b border-gray-800">
                <h5 class="font-bold text-gray-600 uppercase">Graph</h5>
              </div>
              <div class="p-5">
                <sunburst :data="tree">
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
                    description=""
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
              </div>
            </div>
            <!--/Graph Card-->
          </div>

          <div class="w-full p-3">
            <!--Table Card-->
            <div class="bg-gray-900 border border-gray-800 rounded shadow">
              <div class="p-3 border-b border-gray-800">
                <h5 class="font-bold text-gray-600 uppercase">Table</h5>
              </div>
              <div class="p-5">
                <table class="w-full p-5 text-gray-700">
                  <thead>
                    <tr>
                      <th class="text-left text-gray-100">Asset</th>
                      <th class="text-left text-gray-100">Coins</th>
                      <th class="text-left text-gray-100">USDT Price</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr v-for="(i, index) in sortedbalance" :key="index">
                      <td class="text-gray-200">{{ i['name'] }}</td>
                      <td class="text-gray-200">{{ i['coins'] }}</td>
                      <td class="text-gray-200">{{ i['size'] }}</td>
                    </tr>
                  </tbody>
                </table>

                <div class="pt-4 pb-2 text-yellow-600">
                  <p class="pb-2">
                    *Notes
                  </p>
                  <p>
                    1. If the USDT Price is NaN, this means coin is not
                    currently listed on the Exchange.
                  </p>
                  <p>
                    2. If the USDT Price is 0.00, this means coin is value is
                    too low in USDT.
                  </p>
                  <p>
                    3. If any asset is prefixed with "LD" that means that asset
                    is used in Flexible Savings.
                  </p>
                  <p>
                    4. Assets with locked Savings are not shown.
                  </p>
                </div>
              </div>
            </div>
            <!--/table Card-->
          </div>
        </div>

        <!--/ Console Content-->
      </div>
    </div>
    <!--/container-->

    <footer class="bg-gray-900 border-t border-gray-400 shadow">
      <div class="container flex py-8 mx-auto">
        <div class="px-2">
          <h3 class="font-bold text-gray-100">Social</h3>
          <ul class="items-center pt-3 text-sm list-reset">
            <li>
              <a
                class="inline-block py-1 text-gray-200 no-underline hover:text-gray-600 hover:text-underline"
                href="https://github.com/shah-flip"
              >
                Github
              </a>
            </li>
            <li>
              <a
                class="inline-block py-1 text-gray-200 no-underline hover:text-gray-600 hover:text-underline"
                href="https://www.facebook.com/shah.py"
              >
                Facebook
              </a>
            </li>
          </ul>
        </div>
      </div>
    </footer>
  </div>
</template>

<script>
import axios from 'axios'
import _ from 'lodash'

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
        name: 'Balance',
        children: [
          {
            name: 'Binance',
            children: []
          }
        ]
      }
    }
  },
  computed: {
    sortedbalance: function () {
      this.balance = this.tree['children'][0]['children']
      return _.orderBy(this.balance, 'size', 'desc')
    }
  },
  mounted() {
    axios
      .get(`http://${location.host}/api/v1/balance`)
      .then((response) => {
        response.data.data.balances.map((value, key) => {
          this.tree.children[0].children.push({
            name: value.asset,
            size: parseFloat(value.usdt_price).toFixed(2),
            coins: parseFloat(value.free) + parseFloat(value.locked)
          })
        })
      })
      .catch((error) => console.log(error))
  },
  created() {},
  methods: {}
}
</script>

<style scoped></style>
