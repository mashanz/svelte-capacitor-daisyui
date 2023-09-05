<script>
	import { page } from '$app/stores';
	import { goto } from '$app/navigation';
	import Header from '$lib/components/Header.svelte';
	import FloatingButton from '$lib/components/FloatingButton.svelte';
	import Drawer from '$lib/components/Drawer.svelte';
</script>

<main class="h-screen w-full bg-base-200 flex flex-col drawer">
	<Drawer />
	<Header />
	<slot />
	<div class="btm-nav">
		<button on:click={() => goto('/app/')} class:active={$page.url.pathname === '/app'}>
			<div>🏠</div>
			<span class="btm-nav-label">Beranda</span>
		</button>
		<button
			on:click={() => goto('/app/jelajah')}
			class:active={$page.url.pathname === '/app/jelajah'}>
			<div>🔍</div>
			<span class="btm-nav-label">Jelajah</span>
		</button>
		<button
			on:click={() => goto('/app/notifikasi')}
			class:active={$page.url.pathname === '/app/notifikasi'}>
			<div>🔔</div>
			<span class="btm-nav-label">Notifikasi</span>
		</button>
		<button on:click={() => goto('/app/pesan')} class:active={$page.url.pathname === '/app/pesan'}>
			<div>📩</div>
			<span class="btm-nav-label">Pesan</span>
		</button>
	</div>
	<FloatingButton />
</main>
