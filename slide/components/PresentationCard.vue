<script setup>
import { ref } from 'vue'

</script>

<template>
    <div flex flex-col items-center transition duration-500 ease-in-out>
        <img src="/imgs/Vitor.jpeg" w-50 h-50 rounded-full object-cover mb-5>
        <span font-semibold text-3xl>Vitor de Oliveira Veras</span>
        <div items-center>
            <div>
                <span class="opacity-70">Desenvolvedor Full Stack</span>
            </div>
            <div text-sm flex items-center justify-center gap-2 mt-4>
                <div i-ri:github-fill /><span underline decoration-dashed font-mono decoration-zinc-300>VerasNp</span>
            </div>
        </div>
    </div>
</template>