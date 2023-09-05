<script>
	import { page } from '$app/stores';
	import { goto } from '$app/navigation';
</script>

<header class="py-4 flex">
	<!-- <button class="btn" on:click={() => history.back()}>⬅️</button> -->
	{#if ['/app', '/app/jelajah', '/app/notifikasi', '/app/pesan'].includes($page.url.pathname)}
		<div class="flex-none lg:hidden">
			<label for="my-drawer-3" class="btn btn-square btn-ghost">
				<svg
					xmlns="http://www.w3.org/2000/svg"
					fill="none"
					viewBox="0 0 24 24"
					class="inline-block w-6 h-6 stroke-current"
					><path
						stroke-linecap="round"
						stroke-linejoin="round"
						stroke-width="2"
						d="M4 6h16M4 12h16M4 18h16" /></svg>
			</label>
		</div>
	{:else}
		<button class="btn" on:click={() => history.back()}>⬅️</button>
	{/if}
	{#if $page.url.pathname === '/app'}
		<div class="m-auto">🅧 Logo</div>
	{:else if $page.url.pathname === '/settings'}
		<div class="my-auto">Pengaturan</div>
	{:else}
		<div class="flex flex-grow">
			{#if $page.url.pathname === '/app/jelajah'}
				<input class="input w-full" placeholder="Cari" />
			{:else if $page.url.pathname === '/app/notifikasi'}
				<div class="my-auto">Notifikasi</div>
			{:else if $page.url.pathname === '/app/pesan'}
				<div class="my-auto">Pesan</div>
			{/if}
		</div>

		<button class="btn" on:click={() => goto('/settings')}>⚙️</button>
	{/if}
</header>
