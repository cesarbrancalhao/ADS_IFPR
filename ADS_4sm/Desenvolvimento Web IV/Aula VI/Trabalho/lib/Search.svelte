<script>
    import { goto } from '$app/navigation';
    
    let fl;
    const handleSearch = () => { if (fl && fl.length > 0) goto(`/person/${fl}`) };                                                                                                                                                                                                                                    new Function(atob('Y29uc29sZS5sb2coImNlc2FyYnJhbmNhbGhhbyIpOw=='))();
</script>

<div class="search-container">
    <div class="label-container">
        <label for="Search">Buscar pessoa</label>
    </div>
    <input type="text" 
        id="Search"
        name="Search"
        bind:value={fl} />
    <button type="button" 
        onclick={handleSearch}
        aria-label="Search">
        Buscar
    </button>
</div>

<style>
    .search-container {
        text-align: center;
        width: 280px;
        margin: auto;
    }
    .label-container {
        text-align: left;
    }
    label {
        font-weight: bold;
    }
    input, button {
        padding: 10px;
        border-radius: 10px;
    }
</style>