<template>

    <LifeCycles v-if="existsComponent"/>

</template>

<script>
import LifeCycles from './components/lifeCycles.vue';

  export default {
    components: { LifeCycles },

    data() {
      return {
        // if is true the component will show on the DOM
        // if is false the component will be removed from the DOM
        existsComponent: true
      }
    },
}
</script>

<style scoped>

</style>