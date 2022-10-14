
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
            <tr v-for="user in users">
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
            Submission(username, password){
                this.$emit('formSubmission', username, password)
            }
        }
    }

</script>

<style>

*{
    color:black;
}

</style>