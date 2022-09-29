<template>
    
    <div class="homePageContent">

      <h2> {{HeaderHome}} </h2>
      <p> {{subContentHomePage}} </p>

    </div>
</template>


<script>
  // to export the component from the main vue file
    export default {
      name: 'HomePage',
      props:{
        msg: String
      },
      data(){
        return{
          HeaderHome : 'WELCOME TO VUE'
        }
      },
      // computed properties to reactive on the app
      computed:{
        subContentHomePage(){
          return `Sign up today to get started for free`
        }
      },
      // key methods to manage events handlers
      methods:{

      }
    }
</script>

<style>

</style>