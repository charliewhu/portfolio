<script lang="ts">
	import { ExternalLink, Github } from 'lucide-svelte'
	import * as Card from '$lib/components/ui/card/index.js'
	import { PUBLIC_BASE_URL } from '$env/static/public'

	const apps = [
		{
			name: 'Interex',
			description: 'A fake futures exchange that matches user orders on a depth of market ladder',
			link: `http://interex.charlieavery.site`,
			github: 'https://github.com/charliewhu/interex',
		},
		{
			name: 'Choptions',
			description: 'An option pricer with profit/loss matrix',
			link: `http://choptions.charlieavery.site`,
			github: 'https://github.com/charliewhu/choptions',
		},
		{
			name: 'Production Tracker',
			description: 'A simple tracker for monthly crude oil production',
			link: `http://prodtrack.charlieavery.site`,
			github: 'https://github.com/charliewhu/stock_track',
		},
	]
</script>

<h1 class="mb-2 text-4xl font-extrabold tracking-tight lg:text-5xl">Charlie Avery</h1>

<h2 class="mb-8 text-3xl font-semibold tracking-tight text-muted-foreground">
	Software and Data Engineer
</h2>

<h3 class="mb-4 text-2xl font-semibold tracking-tight">My Projects:</h3>

<div class="grid gap-4 sm:grid-cols-2">
	{#each apps as app}
		<Card.Root class="flex flex-col justify-between">
			<Card.Header>
				<Card.Title>{app.name}</Card.Title>
				<Card.Description>{app.description}</Card.Description>
			</Card.Header>
			<!-- <Card.Content></Card.Content> -->
			<Card.Footer>
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
			</Card.Footer>
		</Card.Root>
	{/each}
</div>
