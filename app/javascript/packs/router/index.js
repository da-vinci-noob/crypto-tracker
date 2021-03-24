import Vue from 'vue'
import Router from 'vue-router'
import Signin from '../components/Signin'
import Homepage from '../components/Homepage'
import Balance from '../components/User/Balance'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Homepage',
      component: Homepage
    },
    {
      path: '/balance',
      name: 'Balance',
      component: Balance
    },
    {
      path: '/signin',
      name: 'Signin',
      component: Signin
    }
  ]
})
