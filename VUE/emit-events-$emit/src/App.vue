<template>

<div class="form-container">
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
  background: rgb(0, 0, 0);
}

.form-container{
  display:flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 2em;
}

</style>