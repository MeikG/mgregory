<header>
  <div class="row">
    <div class="col-md-12 text-center">
      <h1 class="header">Mike Gregory</h1>
    </div>
  </div>
  <div class = "row">
    <div class = "container">
      <p class = "text-center toplinks">
        <a each={toplinks} class="nav-link { selected: parent.selectedId == url}" href="/{url}">{name}</a>
      </p>
    </div>
  </div>

  <script>
    var self = this;

    self.toplinks = [
      {url: '', name: 'Home'},
      {url: 'projects', name: 'Projects'},
      {url: 'contact', name: 'Contact'}
    ];

    var r = riot.route.create();
    r(highlightCurrent);

    function highlightCurrent(controller) {
      self.update({
        selectedId: controller
      });
    }
  </script>

  <style scoped>
    .header {
      padding: 20px;
      font-family: serif;
    }

    .toplinks {
      padding: 10px 0 10px 0;
      margin-bottom: 30px;
      border-top: 1px solid black;
      border-bottom: 1px solid black;
    }
    a.selected {
      background-color: #b6ccdd;
    }
  </style>
</header>