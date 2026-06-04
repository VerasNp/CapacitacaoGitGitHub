<script setup lang="ts">

const props = defineProps<{
    text: string;
    images?: ChildNode[]
}>()
</script>

<template>
    <div class="flex gap-10">
        <div>
            <p>
                Essas plataformas visam prover um meio integrado para contribuição de projetos de código
                aberto/privados usando um controle de versão distribuído, facilitando assim o trabalho em equipe.
            </p>

            <div class="grid grid-cols-2 gap-5 items-center">
                <div>
                    <img src="./../public/imgs/BitbucketLogo.png">
                </div>
                <div>
                    <img src="./../public/imgs/GitHubLogo.png">
                </div>
            </div>
            <div class="grid grid-cols-2 gap-5">
                <div>
                    <img src="./../public/imgs/GitLabLogo.png">
                </div>
                <div>
                    <img src="./../public/imgs/GiteaLogo.svg">
                </div>
            </div>
        </div>
    </div>
</template>