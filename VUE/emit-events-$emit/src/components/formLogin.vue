<template>
  
        <form>      
        <div class="inputData">
            <input v-model="this.users.username" class="username" type="text" placeholder="username">
            <input v-model="this.users.password" class="password" type="password" placeholder="password**">
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
            ID_user: 1,
            users: []
        };
    },
    methods: {
        addUser() {
            this.users.push({id: this.ID_user++, username: this.users.username, password: this.users.password});
        }
    },
    components: { RenderForm }
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