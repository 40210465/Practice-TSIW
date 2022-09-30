<template>
    
    <div class="LoginFormComponent">
        
        <form>

            <input type="text" id="username" v-model="this.username" required placeholder="Username">
            <input type="password" id="password" v-model="this.password" required placeholder="*******">
            <input type="submit" value="Login" id="LoginSubmission" @click="formSubmission">
            
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
      data(){
        return{
          username:[] ,
          password: []
        }
      },
      beforeUpdate(){
  console.log('beforeUpdate Login component');
},
updated(){
  console.log('updated Login component');
},
      methods:{
        formSubmission(e){
          e.preventDefault();
          console.log(`${this.username} ${this.password}`);
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