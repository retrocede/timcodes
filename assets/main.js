import Vue from "vue";
import VueRouter from "vue-router";
import RootComponent from "./root";
import routes from './app/routes';

// disable the production tip
if (process.env.NODE_ENV !== 'production') {
    Vue.config.productionTip = false;
}

//
// router
//

Vue.use(VueRouter);

const router = new VueRouter({
    mode: 'history',
    routes,
});


//
// create our root Vue instance and mount it to the DOM
//
new Vue({
    el: "#app",
    router,
    render: h => h(RootComponent),
});
