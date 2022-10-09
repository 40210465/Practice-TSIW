<template>
    <div class="user" @click="showUser(user.id, user.username)">
        {{username}}
    </div>
</template>

<script>
export default {
    name: 'UsersList',
    props: {

        user:{
            type: Object,
            required:true
        },

        username:{
            type:String,
            required:true
        },
        password:{
            type:String,
            required:true
        },
        firstName:{
            type:String,
            required:true
        },
        lastName:{
            type:String,
            required:true
        },
        isAdmin:{
            type:Boolean
      
        },
        isUser:{
            type:Boolean
          
        }
        
    },
    methods: {
        showUser(id, username){
            this.$emit('displayUser', id, username)
        }
    },
   
}
</script>


<style>

    .user{
        cursor:pointer;
        background: #d3cad387;
        padding: 10px 10px;
        border-radius:  12px;
}

.user{
        transition: 350ms ease-in;
    }

    .user:hover{
        background: #6e486e87;
    }

</style>