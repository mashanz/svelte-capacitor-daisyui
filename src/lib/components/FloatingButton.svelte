<script>
	import { goto } from '$app/navigation';
</script>

<button
	on:click={() => goto('/new_post/')}
	class="absolute right-4 bottom-20 text-xl btn h-16 w-16 btn-primary rounded-full z-10">
	🪶
</button>
