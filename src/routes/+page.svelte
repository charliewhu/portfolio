<script lang="ts">
	import { ExternalLink, Github } from 'lucide-svelte'
	import * as Card from '$lib/components/ui/card/index.js'
	import { PUBLIC_BASE_URL } from '$env/static/public'

	const apps = [
		{
			name: 'Interex',
			description: 'A fake futures exchange that matches user orders in a depth of market ladder',
			link: `${PUBLIC_BASE_URL}:5173`,
			github: 'https://github.com/charliewhu/interex',
		},
		{
			name: 'Choptions',
			description: 'An option pricer with profit/loss matrix',
			link: 'https://choptions.streamlit.app',
			github: 'https://github.com/charliewhu/choptions',
		},
		{
			name: 'Production Tracker',
			description: 'A simple tracker for crude oil production',
			link: `${PUBLIC_BASE_URL}`,
			github: 'https://github.com/charliewhu/stock_track',
		},
	]
</script>

<h1 class="mb-2 scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-6xl">Charlie Avery</h1>

<h2
	class="mb-8 scroll-m-20 pb-2 text-3xl font-semibold tracking-tight text-muted-foreground transition-colors first:mt-0"
>
	Software and Data Engineer
</h2>

<h3 class="mb-6 scroll-m-20 text-2xl font-semibold tracking-tight">My Projects:</h3>

<div class="grid gap-4 md:grid-cols-2">
	{#each apps as app}
		<Card.Root class="w-[350px]">
			<Card.Header>
				<Card.Title>{app.name}</Card.Title>
				<Card.Description>{app.description}</Card.Description>
			</Card.Header>
			<Card.Content>
				<ul>
					<li>
						<a href={app.link} target="_blank" class="flex items-center gap-2">
							View App
							<ExternalLink size={16} />
						</a>
					</li>
					<li>
						<a href={app.github} target="_blank" class="flex items-center gap-2">
							View Source Code
							<Github size={16} />
						</a>
					</li>
				</ul>
			</Card.Content>
			<!-- <Card.Footer class="flex justify-between"></Card.Footer> -->
		</Card.Root>
	{/each}
</div>
