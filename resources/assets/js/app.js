
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */
import Vue from 'vue'
import VueRouter from 'vue-router';
import { routes } from './routes';


Vue.use(VueRouter);

require('./bootstrap');

// window.Vue = require('vue');

const router=new VueRouter({
    mode:'history', //To get nicer url
    routes, //points import routes || routes:routes
    linkActiveClass: "active", // active class for non-exact links.
    linkExactActiveClass: "active" // active class for *exact* links.
});

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

// Vue.component('posts',
//     require('./components/Posts.vue')
// );
Vue.component('navbar',
    require('./components/Navbar.vue')
);

const app = new Vue({
    el: '#app',
    router //points const router || router:router
});
