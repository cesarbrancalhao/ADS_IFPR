<script>
    let movies = $state(null);
    async function getMovies() {
        let endpoint = `http://localhost:8000/movie/top`;
        const res = await fetch(endpoint);
        const data = await res.json();
        if (res.ok) {
            return data;
        } else {
            throw new Error(data); 
        }
    }
    
    function handleClick() {
        getMovies().then((data)=>{
            movies = data;
        });
    }
</script>

<h1>Top 20</h1>

<button onclick={handleClick}>List</button>

<div class="movies">
    {#if movies}
        {#each movies as movie}
            <p>{movie.title}</p>
        {/each}
    {/if}
</div>