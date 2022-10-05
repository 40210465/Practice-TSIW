<!-- MAIN COMPONENT -->
<!-- SINGLE FILE COMPONENT -->

<!-- HTML -->
<template>

<userProfile/>

</template>

<!-- JS -->
<script>

import userProfile from './components/userProfile.vue'

// ALL THE DATA FROM THE OBJECT WILL BE EXPORTED/RETURNED INTO THE TEMPLATE ABOVE
export default {
  
  name: 'App',
  components:{ userProfile }


  // ----------------------------------------------------------------------------------------------------------------------------
}

</script>


<!-- CSS -->
<style>

  #app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}

#app-container{
  margin-top: 20px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

</style>
