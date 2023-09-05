<script>
	import Header from '$lib/components/Header.svelte';
	import FloatingButton from '$lib/components/FloatingButton.svelte';
	import Drawer from '$lib/components/Drawer.svelte';
	import BottomNav from '$lib/components/BottomNav.svelte';
</script>

<Drawer />
<main class=" w-full bg-base-200 flex flex-col drawer">
	<Header />
	<div class="flex-grow overflow-auto">
		<slot />
	</div>
</main>
<FloatingButton />
<BottomNav />
