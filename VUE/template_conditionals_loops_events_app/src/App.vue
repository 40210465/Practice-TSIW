<template>


<Profile_info/>


</template>


<script>

import Profile_info from './components/Profile_info.vue'


export default {
  name: 'App',
  components: {
    Profile_info
},

// key data to return data inside our application where his mounted
data(){
  return{
    followers : 0,
  // CREATE USER OBJECT ABOUT THE INFORMATION OF THE USERS
    user:{
      id: 1,
      userName: 'Pedromst2000',
      firstName:'Pedro',
      lastName : 'Teixeira',
      age: 21,
      email : 'pedromst2000@gmail.com',
      // TO CHECK IF HIS THE ADMIN OF THE APPLICATION 
      isAdmin: true
    }
  }
},

// key methods to trigger events handlers
methods: {
    
},

}



</script>

<style>

</style>
