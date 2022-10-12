
<template>
   <div class="input-submission">
            <input class="submission" type="submit" value="Add">
        </div>
</template>

<script>

    export default {
        
        name: "renderForm",
        
        props:{
            user:{
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
    color:white;
}

</style>