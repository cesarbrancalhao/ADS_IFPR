<script>
    let { children } = $props();
</script>

<nav style="text-align: center;">
    <a href="/" style="text-decoration: none; color: blue; font-weight: bold;">home</a> /
    <a href="https://github.com/cesarbrancalhao" style="text-decoration: none; color: blue; font-weight: bold">github</a> /
    <a href="/" onclick={() => alert("Em construção")} style="text-decoration: none; color: blue; font-weight: bold">tutorial</a>
</nav>

{@render children()}