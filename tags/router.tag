<router>
  <span riot-tag="{ tag }"></span>

  <script>
    var self = this;

    // Implement our page loader.
    riot.route(function(collection, id, action) {
      // If no page has been specified, assume the homepage.
      var page = collection || 'homepage';
      self.update({
        tag: page
      });
      var mount = riot.mount(page, {id: id, action: action});
      // If cannot be mounted, show a 404 message.
      if (mount.length === 0) {
        self.update({
          tag: 'error-404'
        });
        riot.mount('error-404');
      }
    });
  </script>
</router>