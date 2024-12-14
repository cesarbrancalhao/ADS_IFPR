<script>
    import { onMount } from "svelte";
    let movies = $state(null);
    
    async function getMovies() {
        debugger
        let endpoint = `http://localhost:8000/find`;
        const res = await fetch(endpoint);
        const data = await res.json();
        if (res.ok) {
            return data;
        } else {
            throw new Error(data); 
        }
    }
    
    onMount(() => {
        getMovies().then((data)=>{
            movies = data.movies;
        });
    });
</script>

<h1>Top 20</h1>

<div class="movies">
    {#if movies}
        {#each movies as movie}
            <h2>{movie.title}</h2>
            <p>{movie.release_date}</p>
        {/each}
    {/if}
</div>