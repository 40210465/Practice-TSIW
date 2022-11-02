import { createRouter, createWebHistory } from 'vue-router'
import WelcomeView from '../views/WelcomeView.vue'
import AboutView from '../views/AboutView.vue'
import Jobs from '../views/Jobs.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),


  routes: [
    {path:'/', name: 'home', component: WelcomeView},
    {path:'/about', name:'about', component: AboutView},
    {path:'/jobs', name:'jobs', component:Jobs}
   ]
})

export default router
