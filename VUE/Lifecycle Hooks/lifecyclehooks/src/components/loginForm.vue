<template>
    
    <div class="LoginFormComponent">
        
        <form>

            <input type="text" id="username" required placeholder="Username">
            <input type="password" id="password" required placeholder="*******">
            <input type="submit" value="Login" id="LoginSubmission" @click.prevent.stop>
            
        </form>

    </div>
</template>


<script>
    // to export the component from the main Vue file
    export default {
      name: 'loginFrom' ,
      props: {
        msg: String
      },
      methods:{
        preventLoginFormSubmission(e){
            e.preventDefault();
        }
      }
    }
</script>

<style>
form{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 2em;
}

</style>