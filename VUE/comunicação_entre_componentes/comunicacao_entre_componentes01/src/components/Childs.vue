<template>
    <div v-for="name in names">
        {{name}}
    </div>
    <!-- COMUNICAÇÃO DO FILHO PARA O PAI -->
    <button @click="$emit('RandomParent', getRandomParent)">Devolver o pai aleatório</button>
</template>

<script>
    export default {
        props: {
            names: {
                type: Object,
                required: true 
            },
        },
    
        computed: {
            getRandomParent() {
                let random = Math.floor(Math.random() * this.names.length); 
           
                let randomParent = this.names[random]

                return `${randomParent.toUpperCase()}`
            }
        },
    }
</script>

<style scoped>

</style>