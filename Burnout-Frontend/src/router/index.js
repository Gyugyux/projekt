import { createRouter, createWebHistory } from 'vue-router'
import Fooldal from '../Fooldal.vue'
import Account from '../views/Account.vue'

const routes = [
    { path: '/', name: 'Fooldal', component: Fooldal },
    { path: '/account', name: 'Account', component: Account },
]

const router = createRouter({
    history: createWebHistory(),
    routes,
})

export default router
