<script>
	import { goto } from '$app/navigation';
	import { Geolocation } from '@capacitor/geolocation';

	/** @type {import('@capacitor/geolocation').Position} */
	let loc;

	async function getCurrentPosition() {
		const res = await Geolocation.getCurrentPosition();
		loc = res;
	}
</script>

<div class="m-auto max-w-md p-4">
	<div class="card card-body bg-white shadow">
		<h1>Geolocation</h1>
		<p>Your location is:</p>
		<p>Latitude: {loc?.coords.latitude}</p>
		<p>Longitude: {loc?.coords.longitude}</p>
		<button class="btn btn-primary" on:click={getCurrentPosition}> Get Current Location </button>
	</div>

	<div class="p-4">
		<button class="btn btn-secondary w-full" on:click={() => goto('/app')}>Home Page</button>
	</div>
</div>
