<template>
    
    <!-- PARA COMUNICAR COM O FILHO -->
    <Childs @RandomParent="showRandom" :names='names'/>
        {{name}}
</template>

<script>
import Childs from './Childs.vue';

    export default {
    components: { Childs },
        data() {
            return {
            names: ['Pedro', 'Ariana', 'Ronaldo', 'Quim'],
            name: ''
            }
        },
        methods: {
            showRandom(name) {
                this.name = name
            }
        },
}
</script>

<style scoped>

</style>