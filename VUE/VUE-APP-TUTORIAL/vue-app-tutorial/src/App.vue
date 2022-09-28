<!-- SINGLE FILE COMPONENT -->

<!-- HTML -->
<template>

<div id="app-container">

 @{{ user.userName }} - {{fullName}}
      <span class="followers"> <strong>Followers :</strong>{{this.followers}}</span>&ensp;

  <!-- WE CAN TRIGGER EVENTS IN TWO WAYS : @eventName="method_property" OR v-on:eventName="method_property" -->
  <button id="Follow"  @click="Follow">Follow</button>
  &ensp;
  <!-- <button disabled id="disabled" @click="Unfollow">Unfollow</button> -->
  

</div>  

</template>

<!-- JS -->
<script>


// ALL THE DATA FROM THE OBJECT WILL BE EXPORTED/RETURNED INTO THE TEMPLATE ABOVE
export default {
  
  name: 'App',

// key data
// to return some data inside our application
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
// KEY computed
  // COMPUTED CACHING VS METHODS properties
  //COMPUTED properties are cached on their reactive dependencies. A computed property will only re-evaluate when some of its reactive dependices have changed
  // COMPUTED properties
  computed:{
    // CREATE COMPUTED PROPERTY FULLNAME
    fullName(){
      // USING 'this' TO REFERENCE THE OBJECT ABOUT THE key Data Above => data()
      // will return this data when calling the property in the template => {{ fullName }}
      return `${this.user.firstName} ${this.user.lastName}`
    }
  },
  // KEY methods
  // METHODS FOR EVENTS HANDLING
  // Methods properties will handle Events on the DOM like for instance ONclick EVENTS
  // WE USE METHODS PROPERTIES FOR EVENTS HANDLERS AND WE CALL THEM INSIDE V-DIRECTIVES => @click="method_property_name" or v-on:click
  // IN ORDER TO TRIGGER methods properties we need events such as onclick events for instance
  methods: {
    Follow(){
      let followbtn = document.getElementById('Follow');
      if(followbtn.innerText == 'Follow'){
        this.followers++;
        followbtn.innerText = 'Unfollow' 
      }else{
        this.followers--;
        followbtn.innerText = 'Follow' 
      }
      
    },
    // Unfollow(){
    //   this.followers--
    //   if(this.followers === 0){
    //     document.getElementById('disabled').setAttribute('disabled','disabled')
    //   }
    //   else{
    //     document.getElementById('disabled').removeAttribute('disabled','disabled')
    //   }
    // }
  },
  // LIFE CICLE HOOK 
  //key Mounted => can be used to run code after the component has finished the initial rendering and created the DOM nodes
  // The first data rendering will be the MOUNTED HOOK on the DOM
  // THE FIRST ELEMENT THAT WILL BE RENDERING ON THE DOM BY DEFAULT 
  mounted(){
    this.Follow()
  }
}
</script>


<!-- CSS -->
<style>
  /* GLOBAL STYLE FOR THE ALL APPLICATION */
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}

#app-container{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
</style>
