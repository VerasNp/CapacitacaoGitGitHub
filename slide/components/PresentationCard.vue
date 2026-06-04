<script setup lang="ts">
import { RiGithubFill, RiLinkedinBoxFill } from "@remixicon/vue";
const props = defineProps<{
    name: string,
    role: string,
    img: string,
    gitHub: {
        placeholder: string,
        url: string
    },
    linkedIn: {
        placeholder: string,
        url: string
    }
}>()
</script>

<template>
    <div flex flex-col items-center transition duration-500 ease-in-out>
        <img :src="props.img" w-50 h-50 rounded-full object-cover mb-5>
        <span font-semibold text-3xl>{{ props.name }}</span>
        <div items-center>
            <div>
                <span class="opacity-70">{{ props.role }}</span>
            </div>
            <div text-sm flex items-center justify-center gap-20 mt-4>
                <div class="flex flex-col">
                    <div class="text-center">
                        <a :href="props.gitHub.url" underline decoration-dashed font-mono decoration-zinc-300>{{
                            props.gitHub.placeholder }}</a>
                    </div>
                    <div>
                        <img src="./../public/imgs/QRCodeGitHub.svg" class="w-20">
                    </div>
                </div>
                <div class="flex flex-col">
                    <div class="text-center">
                        <a :href="props.linkedIn.url" underline decoration-dashed font-mono decoration-zinc-300>{{
                            props.linkedIn.placeholder }}</a>
                    </div>
                    <div>
                        <img src="./../public/imgs/QRCodeLinkedIn.svg" class="w-20">
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>