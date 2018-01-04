<style lang="scss">
@import '../css/app.scss';

#main {
  width: 80%;
  margin: 0 auto;
}
</style>

<template>
  <div id="main">
    <h1>Here's your app</h1>
    <div id="main-content">
      <router-view></router-view>
    </div>
  </div>
</template>

<script>
export default {
  name: 'app'
}
</script>

