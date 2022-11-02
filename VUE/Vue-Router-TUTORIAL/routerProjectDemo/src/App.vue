<script>
import { RouterLink, RouterView } from 'vue-router'
import Welcome from './components/Welcome.vue';

</script>

<template>
  <header>
   <Welcome/>
   
   <nav>
      <router-link to="/">Home</router-link>
      <router-link to="/about" >About Us</router-link>
      <router-link to="/jobs" >Jobs</router-link>
   </nav>
  
  </header>


<router-view/>
</template>

<style  scoped>

</style>