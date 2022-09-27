import { createApp } from 'vue'
// WIM IMPORT THE APP FROM THE APP VUE SINCE HIS THE FILE WHO HOLDS ALL THE APP WE ARE CREATING
// App.vue IS THE MAIN FILE OF OUR APPLICATION
import App from './App.vue'
// import router

// CREATE APP
const app = createApp(App)

// THE APP WILL BE CREATED/MOUNTED INSIDE THIS HTML ELEMENT => <div id="app"></app>
app.mount('#app')
// app.use('router)
