<template>

<div form-container>
  <FormLogin/>
</div>

</template>


<script>
import FormLogin from './components/formLogin.vue';
import RenderForm from './components/renderForm.vue';

  export default {
    name: "App",
    components: { FormLogin, RenderForm }
}
</script>

<style>



</style>