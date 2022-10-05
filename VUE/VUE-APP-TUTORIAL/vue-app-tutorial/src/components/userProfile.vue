<!-- SINGLE FILE COMPONENT FOR THE USER PROFILE -->

<!-- USER PROFILE COMPONENT -->
<template>
   
 <div class="profile-container">
    <div class="profile-name">
        <span class="fullname">{{fullName}}</span>
        <span class="username">@{{user.userName}}</span>
    </div>
    <div class="followers-counter">
        <span class="Followers">Followers</span>
        <span class="followers-count">{{this.followers}}</span>
      </div>
    <div class="buttons-container">
        <button id="Follow" @click="Follow">Follow</button>
        <button @click="changeUsername">Change username</button>
    </div>
 </div>


</template>


<script>
    // ALL THE DATA FROM THE OBJECT WILL BE EXPORTED/RETURNED INTO THE TEMPLATE ABOVE
export default {
    name: 'userProfile',
    props:{
        msg: String
    },

    // FRONTEND OF THE COMPONENT
    
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


// WHEN SOME DATA FROM THE OBJECT CHANGES THE FUNCTION WILL RUN INSIDE THE WATCH
  // WATCH IF SOMETHING WAS CHANGE ? IFtrue console.log('The user was change') : IFfalse console.log('The user is the current')
  watch:{
    followers(newfollower, oldfollower){
      if(oldfollower < newfollower){
        console.log(`${this.user.userName} was received on follower !!`);
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
    
    changeUsername(){
     let checkChangedUserName = prompt('Change the username')
      
     if(checkChangedUserName === null || checkChangedUserName === ''){
      this.user.userName === this.user.userName
      console.log(this.user);
    } 
    else{
      this.user.userName = checkChangedUserName
      console.log(this.user);
      alert(`The username was changed to ${this.user.userName}`)
    }
    }
  },


   // LIFE CICLE HOOK
  // EXAMPLE OF LIFE CYCLE HOOK OF A COMPONENT WITH MOUNT PHASE 
  //key Mounted => can be used to run code after the component has finished the initial rendering and created the DOM node
  // WHEN TO COMPONENT HIS MOUNTED WILL TRIGGER THIS FUNCTION
  mounted(){
    this.Follow()
  },
  // WILL TRIGGER WHEN SOME DATA ON THE COMPONENT IS CHANGED/UPDATING
  updated(){
    console.log('was updated');
  }


}
</script>


<style>

.profile-container{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 1em;
  background: #E5ECEED9;
  box-shadow: 0px 3px 7px 6px #00000080;
  border-radius: 12px;
}

.profile-name{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.followers-counter{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.buttons-container{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 1em;
}

</style>