<template>
    <div>
        {{ msg }}
    </div>
</template>

<script>
    export default {
        data() {
            return {
                msg: "Hello Vue3"
            }
        },
        // lifecycleHooks
        // before create component
        beforeCreate(){
            console.log("beforeCreate");
        },
        // when the component is created
        created() {
        console.log("created");           
        },
        // before mounting the component
        beforeMount(){
            console.log("beforeMount");
        },
        // when the component is mounted with the creation of the app
        mounted() {
        console.log("mounted");  
        },
        // before being updated the component
        beforeUpdate(){
            console.log("beforeUpdate");
        },
        // this phase will trigger when the some data changes in the componnet
        updated(){
            console.log("updated");
        },
        // will trigger before the component is removed from the DOM
        beforeUnmount(){
            console.log("beforeUnmount");
        },
        // will trigger when the component is removed from the DOM
        unmounted(){
            console.log("unmounted");
        }
    }
</script>

<style scoped>
div{
    display: flex;
    justify-content: center;
    align-items: center;
}
</style>