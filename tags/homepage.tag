<homepage>
  <div class = "banner">
    <img src="/img/banner/mgregory.jpg" width="100%">
  </div>
  <h4 class="text-muted text-center under-construction"><span class="glyphicon glyphicon-warning-sign"></span> Please pardon the dust, my website is still in development.</h4>
  <div class="row">
    <div class="col-sm-9 col-sm-push-3 col-md-9 col-md-push-3 text-justify">
      <p>
        Two years ago, I graduated from the University of Bradford with a First Class Degree in Computer Animation and Special Effects.
        My time there taught me to have a keen eye for aesthetics, and how to create something that is not only functional but attractive.
        Since then, I have been driven to translate this into the way that I build a website.
        Not just the interface, but the code underneath should be beautiful and well documented too.
      </p>
      <p>
        After graduating, I have been working in education and developed several internal & external websites for my employer.
        I am looking for an opportunity to branch out and start working on commercial projects with a wider reach.
      </p>
      <p>
        I bring with me an honest enthusiasm for website development, and an interest in pushing the boundaries with new technology.
        I am excited about PHP, ES6, service workers and single page app frameworks.
        A lot of my best work has come from being posed with a problem, whether it’s an aged inventory system or cumbersome software, and coming up with a solution.
      </p>
      <p>
        If you would like to see some of my projects, <a href="/projects">you can access them here</a>, and my github can be viewed at <a href="https://github.com/meikg">https://github.com/meikg</a><br>
        <a href="/contact">Contact Information</a>
      </p>
    </div>
    <div class="col-sm-3 col-sm-pull-9 col-md-3 col-md-pull-9">
      <img class="avatar" src="/img/mgregory.png" width="100%">
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <h3>Software & Skills</h3>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-4 col-md-4">
      <ul>
        <h4><b>Familiar</b></h4>
        <li>Apache.</li>
        <li>HTML & CSS.</li>
        <li>MySQL.</li>
        <li>Fundamentals of web security (mitigating XSS, SQL injections, CSRF).</li>
        <li>Bootstrap Framework.</li>
      </ul>
    </div>
    <div class="col-sm-4 col-md-4">
      <ul>
        <h4><b>Good Knowledge</b></h4>
        <li>PHP and JavaScript.</li>
        <li>Linux server admin.</li>
        <li>Bash & Batch scripting.</li>
        <li>Git & SVN source control.</li>
        <li>LAMP Stack.</li>
      </ul>
    </div>
    <div class="col-sm-4 col-md-4">
      <ul>
        <h4><b>Proficient</b></h4>
        <li>Adobe Photoshop & Illustrator.</li>
        <li>Windows, Linux and Mac OS X.</li>
        <li>Mac server admin.</li>
        <li>Docker & Rancher.</li>
        <li>PDQ Deploy & Inventory.</li>
      </ul>
    </div>
  </div>
  <h4 class="cv-header">View my CV below or download <a href="/img/cv/CV.pdf" target="_blank">here</a>.</h4>
  <div class = "row cv-row">
    <div each={cv} class="col-xs-4 col-sm-4 col-md-2">
      <img class="image cell" data-fullsize={fullSize} src={thumbnail} width="100%">
    </div>
  </div>

  <script>
    var self = this;
    self.cv = [
      {
        thumbnail:  '/img/cv/thumbnail/CV_Page_1.jpg',
        fullSize:   '/img/cv/fullsize/CV_Page_1.jpg'
      },
      {
        thumbnail:  '/img/cv/thumbnail/CV_Page_2.jpg',
        fullSize:   '/img/cv/fullsize/CV_Page_2.jpg'
      },
      {
        thumbnail:  '/img/cv/thumbnail/CV_Page_3.jpg',
        fullSize:   '/img/cv/fullsize/CV_Page_3.jpg'
      }
    ];

    this.on('mount', function() {
      $('.image').click(function () {
        var fullsize = $(this).data('fullsize');
        $('#image-viewer-img').attr("src", fullsize);
        $('#image-viewer-subtitle').html('');
        $('#image-viewer').modal();
      });
    });
  </script>

  <style scoped>
    .under-construction {
      margin-bottom: 30px;
    }

    .avatar {
      margin-bottom: 10px;
      border: 1px solid #ccc;
    }
    .cv-header {
      margin-top: 50px;
    }

    .cell {
      border: 1px solid grey;
      margin: 5px;
    }
  </style>
</homepage>