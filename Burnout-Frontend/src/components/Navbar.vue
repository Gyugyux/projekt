<script setup>
import { useRouter } from 'vue-router'
const router = useRouter()

const goToAccount = () => {
  router.push({ name: 'Account' })
}
</script>
<template>
  <header>
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid">
        <button class="btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample"
                aria-controls="offcanvasExample" id="hamburger">
          <div class="csik"></div>
          <div class="csik"></div>
          <div class="csik"></div>
        </button>
        <div id="navbarSupportedContent">
          <h1 class="nav-brand freckle-face-regular" aria-current="page"><router-link to="/">Burnout</router-link></h1>
        </div>
        <a @click="goToAccount" id="icon"><i class="fi fi-rs-user"></i></a>
      </div>
    </nav>
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample"
         aria-labelledby="offcanvasExampleLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasExampleLabel">Offcanvas</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <div>
          Some text as placeholder. In real life you can have the elements you have chosen. Like, text, images,
          lists,
          etc.
        </div>
        <div class="dropdown mt-3">
          <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
            Dropdown button
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </div>
      </div>
    </div>
  </header>
</template>
<style scoped>

</style>