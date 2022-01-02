<template>
  <button
    @click="buttonClick"
    class="bg-transparent hover:bg-blue-400 text-blue-700 font-semibold hover:text-white py-2 px-2 border border-blue-500 hover:border-transparent rounded"
  >
    <beat-loader :loading="isLoading" :color="'#0EACF2'" :size="8" />
    <p v-if="!isLoading">
      <slot></slot>
    </p>
  </button>
</template>

<script>
export default {
  name: "PxButton",

  props: {
    isLoading: {
      type: Boolean,
      default: false,
    },
  },

  methods: {
    buttonClick() {
      this.$emit("click");
    },
  },
};
</script>
