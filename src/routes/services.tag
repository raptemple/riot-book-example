<Services>
  <div class="container is-fluid">
    <div class="columns">
      <div class="column is-4" each={service in tracker.services}>
        <ServiceCard service={service} />
      </div>
    </div>
    <h1 is-data="ph"></h1>
  </div>
  <script type="es6">
  </script>
</Services>
