<template>

<div id="componentsHome">

  <!-- component for homepageContent -->
<HomePage/>
<!-- component for the login Form -->


<!-- component to be destroy -->

</div>

</template>

<script>
  // components
import HomePage from '@/components/HomePage.vue'








export default {
  name: 'App',
  components:{
    HomePage
  },


  // ------------------------------------------------------------------------------------------------
  // LIFE CYCLE HOOKS OF COMPONENTS

// A vue component can go through 4 phases 
// 1. Creation =>   beforeCreate()    created()  born stage
// 2. Mounting =>   beforeMount()     mounted()   child stage !! MOUNTED HOOK THE MOST COMMON CYCLE TO USE
// 3. updating =>   beforeUpdate()    updated()   mature stage
// 4. Unmounting => beforeUnmount() unmounted() OR beforeDestroy() Destroyed()  death stage 

  // THE PHASES OF THE LIFE CYCLE HOOKS FOR COMPONENTS
  // --
  // 1TH PHASE = The beggining of the Cycle
  // this reference to the components
  beforeCreate(){
    console.log('beforeCreate');
  },
    created(){
    console.log('created');
  },

  //-----
  // 2TH PHASE = child stage Mounting
  beforeMount(){
    console.log('beforeMount');
  } ,
  mounted(){
    console.log('mounted');
  },
  

// NOTICE THAT THE beforeUpdate and Update WASN´T TRIGGER ON THE CONSOLE
// THE Update stage and the destroy stage will only be trigger if a component is updated or destroyed
// -------
// 3TH PHASE = where the component was changed is trigger the 3TH STAGE functions of the cycle
beforeUpdate(){
  console.log('beforeUpdate');
},
updated(){
  console.log('updated');
},

// ----------
// 4TH PHASE = death stage
beforeDestroy(){
  console.log('beforeDestroy');
},
destroyed(){
  console.log('destroyed');
},

  methods:{

  }
}
</script>

<style>

#componentsHome{
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 2em;
}

</style>
