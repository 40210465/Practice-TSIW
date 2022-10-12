<template>
  
        <form>      
        <div class="inputData">
            <input class="username" type="text" placeholder="username">
            <input class="password" type="password" placeholder="password**">
        </div>
        <!-- to bind the data from the formLogin component into the renderForm component -->
        <!-- WITH BINDING AND PROPS WE CAN TRANSFER DATA FROM ONE COMPONENT TO THE OTHER-->
        <RenderForm v-for="user in users" :key="user.id" :user="user" />      
        </form>

</template>

<script>
import RenderForm from "./renderForm.vue";
    
    export default {
    name: "formLogin",
    components: { RenderForm },

    data() {
        return {
            ID_user: 0,
            users: [
                { id: 1, username: "pedromst2000", password: "123pedro456" }
            ]
        };
    },
    methods: {
        
    },
   
}

</script>

<style>
    input{
        background-color:rgb(216, 205, 205);
    }

    ::-webkit-input-placeholder{
        color: rgb(0, 0, 0);
        font-weight:bolder;
        letter-spacing: 2px;
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

</style>