
<template>

<div class="input-submission">
        
        </div>
        <!-- data will be added to this table from the father component(formLogin) -->
        <table border="1">
            <tr>
                <th>ID_user</th>
                <th>username</th>
                <th>password</th>
            </tr>
            <tr id="userstr" v-for="user in users">
                <td>{{user.id}}</td>
                <td>{{user.username}}</td>
                <td>{{user.password}}</td>
            </tr>
        </table>

</template>

<script>

    export default {
        
        name: "renderForm",
        
        props:{
            users:{
            type: Object,
            required:true
        }
      
        },

        methods: {
        }
    }

</script>

<style>

*{
    color:black;
}


table{
    border: #fff;
   border-collapse:collapse;
   width:60%;
}

table tr,th,td{
    padding:10px 10px;
}

table tr,th{
    background: #41B883;
    color: #fff;
    letter-spacing: 2px;
}

table tr,td{
    background: #35495E;
    color: #fff;
}

#userstr:hover td{
    cursor:pointer;
    background: #6A90B8;



}


</style>