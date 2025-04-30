<script setup>
import { ref, onMounted } from 'vue'
import axios from 'axios'
import Navbar from '@/components/Navbar.vue'

const cikkek = ref([])
const loading = ref(false)
const error = ref(null)

const fetchCikkek = async () => {
  loading.value = true
  error.value = null
  try {
    const response = await axios.get('http://127.0.0.1:8000/api/cikkek')
    cikkek.value = response.data.data
  } catch (err) {
    error.value = 'Nem sikerült betölteni a cikkeket.'
  } finally {
    loading.value = false
  }
}

onMounted(fetchCikkek)
</script>

<template>
  <Navbar />

  <div class="fooldal-page">
    <h1>Legfrissebb cikkek</h1>

    <div v-if="loading">Betöltés...</div>
    <div v-if="error" class="error">{{ error }}</div>

    <ul v-if="!loading && cikkek.length" class="cikk-lista">
      <li v-for="c in cikkek" :key="c.cikk_id" class="cikk-item">
        <h2>{{ c.cim }}</h2>
        <p><em>{{ c.datum_kiadas }}</em></p>
        <p>{{ c.szoveg.substring(0, 200) }}…</p>
        <p class="meta">
          Kategória: <strong>{{ c.kategoria.nev }}</strong> |
          Szerző: <strong>{{ c.szerzo.nev }}</strong>
        </p>
      </li>
    </ul>

    <div v-if="!loading && !cikkek.length">
      <p>Nincsenek még cikkek.</p>
    </div>
  </div>
</template>

<style scoped>
.fooldal-page {
  max-width: 800px;
  margin: 1rem auto;
  padding: 0 1rem;
}
.cikk-lista {
  list-style: none;
  padding: 0;
}
.cikk-item {
  margin-bottom: 2rem;
  border-bottom: 1px solid #ddd;
  padding-bottom: 1rem;
}
.cikk-item h2 {
  margin: 0.5rem 0;
}
.meta {
  font-size: 0.9rem;
  color: #555;
  margin-top: 0.5rem;
}
.error {
  color: red;
}
</style>
