<template>
    
    <!-- father component Users -->
<div class="users-container">
<div class="Users">
    <div class="admin_info">
                <div class="admin_name">{{this.users[0].firstName}} {{this.users[0].lastName}}</div>
                <div class="admin_username">@{{this.users[0].username}}</div>
    </div>
        <!-- CONDITIONS TEMPLATE TO CHECK IF IS ADMIN OR NOT -->
                <div class="typeUser" v-if="this.users[0].isAdmin">Admin</div>
        <!-- IF IS NOT WILL RETURN USER ON THE TEMPLATE -->
               <div class="typeUser" v-else>User</div>  
    </div>

    <!-- child component Users -->
    <div class="Users_wrapper">
        
        <!-- passing props to fetch data into another component(UsersList)-->
        <UsersList @displayUser="showuser" v-for="user in this.users" 
        :user="user"
        :key="user.id" 
        :username="user.username" 
        :password="user.password" 
        :firstName="user.firstName"
        :lastName="user.lastName"
        :isAdmin="user.isAdmin"
        :isUser="user.isUser"
        />   

    </div>
</div>

</template>


<script>

import UsersList from './UsersList.vue'

export default {
    name: 'UsersInfo',
    components:{UsersList},
    props:{
        msg: String
    },
    data() {
        return {
            users: [
        {id:1, username:'pedromst2000', password:'123pedro456', firstName:'Pedro', lastName:'Teixeira', isAdmin: true},
        {id:2, username:'ricardodst', password:'ricardaa', firstName:'Ricardo', lastName:'Teixeira', isAdmin: false },
        {id:3, username:'Reginaf', password:'chocolateregina', firstName:'Regina', lastName:'Fernandes', isAdmin: false},
        {id:4, username:'Jfernandes', password:'Jf1962', firstName:'Joaquim', lastName:'Fernandes', isAdmin: false}
    ]                
        }
    },
    methods: {
        showuser(id, username){
            console.log(id, username);
        }
    },
}

</script>


<style>

.Users{
    background: #d3cad387;
    display:flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 2em;
    border-radius: 12px;
    height: 25vh;
    width: 50vh;
    margin-left: 20px;
    transform: translateY(-20%);
    box-shadow: 0px 3px 7px 6px #00000080;
}

.admin_name{
    font-size: 25px;
    letter-spacing: 1px;
    font-weight: bold;
}

.admin_username{
    font-size: 15px;
    letter-spacing: 1px;
}

.admin_info{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

.typeUser{
    background: #6e486e87;
    padding: 10px 5px;
    border-radius: 12px;
    font-weight: bold;
    letter-spacing: 2px;
    color: #ffff;
}

.Users_wrapper{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    gap: 6em;
}

</style>