<template>

<div id="componentsHome">

  <!-- component for homepageContent -->
<HomePage/>
<!-- component for the login Form -->
<LoginForm/>

</div>

</template>

<script>
import HomePage from '@/components/HomePage.vue'
import LoginForm from '@/components/loginForm.vue'

export default {
  name: 'App',
  components:{
    HomePage,
    LoginForm
  },

  // LIFE CYCLE HOOKS
  
  


  methods:{

  }
}
</script>

<style>

#componentsHome{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 2em;
}

</style>
