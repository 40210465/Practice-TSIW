<template>

<div form-container>
  <FormLogin/>
</div>

</template>


<script>
import FormLogin from './components/formLogin.vue';

  export default {
    name: "App",
    components: { FormLogin}
}
</script>

<style>

*{
  background-color: rgb(13, 12, 12);
}

</style>