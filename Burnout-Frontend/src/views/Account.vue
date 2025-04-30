<script setup>
import { ref, onMounted } from 'vue'
import axios from 'axios'
import Navbar from "../components/Navbar.vue";

const user = ref(null)
const account = ref({ name: '', email: '' })
const loginForm = ref({ email: '', password: '' })
const registerForm = ref({ email: '', password: '' })
const loading = ref(false)
const error = ref(null)
const success = ref(null)

const checkLogin = async () => {
  try {
    const res = await axios.get('http://127.0.0.1:8000/api/account')
    user.value = res.data
    account.value = { ...res.data }
  } catch {
    user.value = null
  }
}

const login = async () => {
  loading.value = true
  error.value = null
  try {
    await axios.post('http://127.0.0.1:8000/api/login', loginForm.value)
    await checkLogin()
    success.value = 'Sikeres bejelentkezés.'
  } catch {
    error.value = 'Hibás email vagy jelszó.'
  } finally {
    loading.value = false
  }
}

const register = async () => {
  loading.value = true
  error.value = null
  try {
    await axios.post('http://127.0.0.1:8000/api/register', registerForm.value)
    await login()
  } catch {
    error.value = 'Regisztráció sikertelen.'
  } finally {
    loading.value = false
  }
}

const logout = async () => {
  await axios.post('http://127.0.0.1:8000/api/logout')
  user.value = null
  success.value = 'Kijelentkeztél.'
}

const updateAccount = async () => {
  loading.value = true
  try {
    await axios.put('http://127.0.0.1:8000/api/account', account.value)
    success.value = 'Fiók frissítve.'
  } catch {
    error.value = 'Nem sikerült frissíteni.'
  } finally {
    loading.value = false
  }
}

const deleteAccount = async () => {
  if (!confirm('Biztosan törölni szeretnéd a fiókot?')) return
  loading.value = true
  try {
    await axios.delete('http://127.0.0.1:8000/api/account')
    await logout()
    success.value = 'Fiók törölve.'
  } catch {
    error.value = 'Törlés sikertelen.'
  } finally {
    loading.value = false
  }
}

onMounted(checkLogin)
</script>

<template>
  <Navbar />

  <div class="account-page">
    <h1>Fiókkezelés</h1>

    <div v-if="loading">Betöltés...</div>
    <div v-if="error" class="error">{{ error }}</div>
    <div v-if="success" class="success">{{ success }}</div>

    <div v-if="!user" class="forms-container">
      <form @submit.prevent="login">
        <h2>Bejelentkezés</h2>
        <label>
          Email:
          <input v-model="loginForm.email" type="email" required />
        </label>
        <label>
          Jelszó:
          <input v-model="loginForm.password" type="password" required />
        </label>
        <button type="submit">Bejelentkezés</button>
      </form>

      <form @submit.prevent="register">
        <h2>Regisztráció</h2>
        <label>
          Email:
          <input v-model="registerForm.email" type="email" required />
        </label>
        <label>
          Jelszó:
          <input v-model="registerForm.password" type="password" required />
        </label>
        <button type="submit">Regisztráció</button>
      </form>
    </div>

    <div v-else>
      <p>Bejelentkezve mint: {{ user.email }}</p>
      <button @click="logout">Kijelentkezés</button>

      <form @submit.prevent="updateAccount">
        <label>
          Név:
          <input v-model="account.name" type="text" required />
        </label>
        <label>
          Email:
          <input v-model="account.email" type="email" required />
        </label>
        <div class="buttons">
          <button type="submit">Fiók frissítése</button>
          <button type="button" class="danger" @click="deleteAccount">Fiók törlése</button>
        </div>
      </form>
    </div>
  </div>
</template>

<style scoped>
.account-page {
  max-width: 900px;
  margin: 0 auto;
  padding: 1rem;
}

.forms-container {
  display: flex;
  gap: 2rem;
  justify-content: center;
  margin-top: 2rem;
}

form {
  flex: 1;
  max-width: 400px;
  background: #f9f9f9;
  padding: 1rem;
  border-radius: 8px;
}

h2 {
  margin-bottom: 1rem;
}

label {
  display: block;
  margin-bottom: 1rem;
}

input {
  width: 100%;
  padding: 0.5rem;
  margin-top: 0.25rem;
}

button {
  padding: 0.5rem 1rem;
  margin-top: 1rem;
  cursor: pointer;
}

.danger {
  background-color: #e74c3c;
  color: white;
}

.buttons {
  display: flex;
  gap: 1rem;
  margin-top: 1rem;
}

.error {
  color: red;
}

.success {
  color: green;
}
</style>
