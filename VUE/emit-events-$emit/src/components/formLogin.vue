<template>
  
        <form>      
        <div class="inputData">
            <input v-model="this.users.username" class="username" type="text" placeholder="username">
            <!-- <label for="password"></label> -->
            <input v-model="this.users.password" id="password" class="password" type="password" placeholder="password**">
        </div>
        <input class="submission" @click.prevent="addUser" type="submit" value="Add">    
        </form>

        <RenderForm :users="users" :key="users.id"/>

</template>

<script>

import RenderForm from "./renderForm.vue";
    
    export default {
    name: "formLogin",
    data() {
        return {
            // if don´t find any key users will return empty array 
            users: JSON.parse(localStorage.getItem("users")) || []
        };
    },

    methods: {
        addUser() {
            
            if(this.users.some((user) => this.users.username === user.username)){
                alert(`The user ${this.users.username} already exists!! Try other`)                
            }

            else if((this.users.username === undefined || this.users.username === '') && 
            ((this.users.password === undefined || this.users.password === ''))) {
                alert(`Please fill the inputfields !!`)
            }
            
            else if(this.users.username === undefined || this.users.username === ''){
                alert(`Please fill a username !!`)
            }

            else if(this.users.password === undefined || this.users.password === ''){
                alert(`Please fill a password !!`)        
            }
        
           else{
               this.users.push({ username: this.users.username, password: this.users.password})
               localStorage.setItem('users', JSON.stringify(this.users))
            }   
            
        },
    },

    created(){
        localStorage.setItem('users', JSON.stringify(this.users))
    },
   
    components: { RenderForm }
}

</script>

<style>
    input{
        background-color:rgb(216, 205, 205);
    }

    ::-webkit-input-placeholder{
        color: #0b3765;
        font-weight:bolder;
        letter-spacing: 5px;
    }

    form{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 3.5em;
        padding: 30px;
    }
    
    input{
        color: white;
        font-weight: bolder;
        letter-spacing: 2px;
        padding: 10px 10px;
        border-radius: 20px;
    }

    /* button submission */
    .submission{
        border-radius:0px;
        padding: 10px 30px;
    }

  .inputData{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 2em;
  }

  .username{
    letter-spacing: 2px;
    background: #41B883;
    box-shadow: inset 0px 4px 4px rgba(14, 2, 2, 0.64);
    transition: 550ms ease-in-out;
  }

  .password{
    letter-spacing: 2px;
    background: #41B883;
    box-shadow: inset 0px 4px 4px rgba(14, 2, 2, 0.64);
    transition: 550ms ease-in-out;
    
}

  .username:focus{
    background: #4677AA;
  }

  .password:focus{
    background: #4677AA;
  }

  .submission{
    border-radius:12px;
    padding: 10px 30px;
    background:#76D1A9;
    color: #0b3765;
    transition: 550ms ease-in-out;  
}

.submission:hover{
    cursor: pointer;
    background: #6A90B8;
    color: #fff;
}

</style>