<template>
  <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content pb-3" style="background-color: #fff0c0;">
        <div class="modal-header border-0">
            <button @click="close()" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body d-flex flex-column justify-content-center align-items-center">
            <h3>게임을 찾지 못했습니다.</h3>
      </div>
      
      </div>
  </div>
</template>

<script setup>
import { useMatchStore } from '@/stores/match';

const matchStore = useMatchStore()

const close = function () {
  matchStore.isNotExistRoom = false
}
</script>

<style scoped>

</style>