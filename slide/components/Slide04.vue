<script setup lang="ts">

const props = defineProps<{
    text: string;
    images?: ChildNode[]
}>()
</script>

<template>
    <div>
        <section class="grid gap-10 grid-cols-[1fr_2fr] mb-5">
            <div>
                <img src="./../public/imgs/GitFlowExample.png">
            </div>
            <div class="flex items-center">
                <p>
                    Controle de versão é um processo que busca rastrear e registrar alterações em arquivos ao longo do
                    tempo.
                </p>
            </div>
        </section>
        <section class="grid gap-10 grid-cols-[2fr_1fr]">
            <div>
                <p>
                    Git surge em 2005 a partir de uma necessidade das pessoas que desenvolviam o Linux.
                </p>
                <div>
                    <img src="./../public/imgs/FirstCommitGit.png">
                </div>
            </div>
            <div>
                <img src="./../public/imgs/LogoGit.png" class="w-50">
            </div>
        </section>
    </div>
</template>