<script>
	import Carousel from 'svelte-carousel';
</script>

<Carousel arrows={false} let:currentPageIndex>
	<div class="p-4">
		<div class="card card-body bg-white">Content 1</div>
	</div>

	<div class="p-4">
		<div class="card card-body bg-white">Content 2</div>
	</div>

	<div class="p-4">
		<div class="card card-body bg-white">Content 3</div>
	</div>
</Carousel>
