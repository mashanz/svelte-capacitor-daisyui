<script>
	import '$lib/style/app.css';
	import { App } from '@capacitor/app';

	// Native mobile Back Button pressed
	App.addListener('backButton', () => {
		history.back();
	});
</script>

<main class="bg-base-200 h-screen w-full">
	<slot />
</main>
