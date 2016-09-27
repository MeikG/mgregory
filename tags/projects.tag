<projects>
  <div class = "banner">
    <img src="/img/banner/projects.jpg" width="100%">
  </div>

  <div class = "row">
    <div class = "container">
      <p class = "text-center toplinks">
        <span>Click to scroll to project: </span>
        <a class="nav-link" each={projects} href="/projects/{url}">{navBarTitle}</a>
      </p>
    </div>
  </div>

  <div each={projects} id={url} class="projects">
    <div class="row">
      <div class="col-xs-12 col-sm-8 col-sm-push-4 col-md-8 col-md-push-4">
        <h1 style="font-family: serif;font-size:4em;">{title}</h1>
        <hr>
        <span if={github}>
          <a href="https://github.com/meikg/{github}">
            <img src="/img/github.png" width="16px" height="16px">
            <span>Code available on Github!</span>
          </a>
        </span>
        <div each={description}>
          <h3>{header}</h3>
          <p class="text-justify">{text}</p>
        </div>
      </div>

      <div class="col-xs-12 col-sm-4 col-sm-pull-8 col-md-4 col-md-pull-8">
        <h3 class="visible-xs hidden-sm hidden-md">Screenshots</h3>
        <span each={img}>
          <img class="image" data-fullsize={fullSize} data-subtitle={subtitle} src={thumbnail} width="100%">
          <em>{subtitle}</em>
        </span>
      </div>


      <div class="col-md-12 text-center projects-bottom">
        <span>Return to <a href="/projects/top">top</a></span>
      </div>
    </div>
  </div>

  <script>
    // TODO: Move this into an external file and build at deploy time.
    self.projects = [
      {
        title: 'Netman',
        navBarTitle: 'Netman',
        url: 'netman',
        description: [
          {
            text: 'This project was built to supersede a far older, non-responsive, hard-coded website. Netman is a fully featured job tracking and inventory management system designed from the ground around the requirements of a Network Department.'
          },
          {
            header: 'Built for 2016',
            text: 'Netman is social. It features notifications to alert staff when a job they are assigned to has been updated. It makes full use of AJAX to display information without page refreshes or interruptions. The bootstrap foundation makes it responsive, and suitable for a range of devices including mobile and tablet.'
          },
          {
            header: 'Collaborative',
            text: 'Being part of a team means knowing what other members of the team are doing. Netman allows staff to tag their co-workers into jobs, or notify them of new comments. Objects, locations and notes can be pinned to jobs so that staff are aware of exactly what they are taking on when jobs are assigned to them.'
          },
          {
            header: 'Intelligent Inventory',
            text: 'Netman provides a unique ID number to every product on campus. Staff can log any attribute against an item, such as make, model or serial number. The inventory is fully searchable through any number of item attributes and supports a wide variety of comparators, including \'contains\', \'starts with\' and \'is present\'. This allows for complex searches and detailed inventory analysis.'
          },
          {
            header: 'Ticket Management',
            text: 'Non-IT staff are able to input jobs directly into Netman via a shortcut on their desktop. Each job has a unique ID, and this is provided to the reporter for easy follow up. Netman automatically records and inputs the logged in user and computer hostname to the job to allow for instant follow-up from the Network team.'
          }
        ],
        img: [
          {
            thumbnail:  '/img/netman/thumbnail/netman01.jpg',
            fullSize:   '/img/netman/fullsize/netman01.jpg',
            subtitle:   'Login screen displaying pinned objects and notifications relevant to the logged in user.'
          },
          {
            thumbnail:  '/img/netman/thumbnail/netman02.jpg',
            fullSize:   '/img/netman/fullsize/netman02.jpg',
            subtitle:   'Example of a job within the system.'
          },
          {
            thumbnail:  '/img/netman/thumbnail/netman03.jpg',
            fullSize:   '/img/netman/fullsize/netman03.jpg',
            subtitle:   'Inventory query page.'
          },
          {
            thumbnail:  '/img/netman/thumbnail/netman04.jpg',
            fullSize:   '/img/netman/fullsize/netman04.jpg',
            subtitle:   'Viewing results from a query.'
          },
          {
            thumbnail:  '/img/netman/thumbnail/netman05.jpg',
            fullSize:   '/img/netman/fullsize/netman05.jpg',
            subtitle:   'Nearly all interactions are done with AJAX to provide the best user end experience.'
          }
        ]
      },
      {
        title: 'PDQ API',
        navBarTitle: 'PDQ API',
        url: 'pdqapi',
        github: 'PDQAPI',
        description: [
          {
            text: 'PDQ is a suite of inventory management and deployment software built by Admin Arsenal. It\'s used for pushing out packages, and deploying a wide variety of software, scripts, and updates to Windows-based PCs.'
          },
          {
            header: 'Why Build An API?',
            text: 'PDQ requires access to a Windows PC or server in order to push out packages. Building this eliminated the need to remotely connect to a server and instead allowed the software to be used through Netman. It was implemented as a stateless, fully RESTful API written in PHP. It utilises Slim for the routing and request handling, and Medoo for database access.'
          }
        ],
        img: [
          {
            thumbnail:  '/img/pdq/thumbnail/PDQ01.jpg',
            fullSize:   '/img/pdq/fullsize/PDQ01.jpg',
            subtitle:   'Screen displaying statistics about computer within Netman.'
          },
          {
            thumbnail:  '/img/pdq/thumbnail/PDQ02.jpg',
            fullSize:   '/img/pdq/fullsize/PDQ02.jpg',
            subtitle:   'Displaying software deployment choices.'
          }
        ]
      },
      {
        title: 'Photos Enrolment Plugin',
        navBarTitle: 'Enrolment Photos',
        url: 'enrolmentphotos',
        description: [
          {
            text: 'This collaborative PHP project was built by myself and a co-worker as a plugin for the Moodle VLE. Using it, enrolling students could log in with their pre-enrolment credentials and upload, edit and submit their student photograph for review. The photos plugin automatically emailed applicants about their photo\'s status, reducing the work load of the admin team.'
          },
          {
            header: 'Impact',
            text: 'Collecting and pre-printing student cards has numerous advantages versus collecting them at enrolment. It vastly reduced the number of I.T. staff required on the day, and reduced the risk from cameras or card printers failing. It also alleviated anxiety and greatly reduced the technical requirements of non-IT staff on enrolment.'
          }
        ],
        img: [
          {
            thumbnail:  '/img/imageunavailable_thumb.jpg',
            fullSize:  '/img/imageunavailable_full.jpg',
            subtitle:   'Images for this project are coming soon.'
          }
        ]
      },
      {
        title: 'OHMS',
        navBarTitle: 'OHMS',
        url: 'ohms',
        github: 'OHMS',
        description: [
          {
            text: 'Online Home Meals System is a meal tracking website built for organising recipes and meal planning. It is currently in active development as a solo project on my github.'
          },
          {
            header: 'Cutting Edge',
            text: 'OHMS is two projects. The first is a back-end API written in JavaScript running on Node. It utilises the Sails framework, with cookie-based JWT (Json Web Token) authentication. It is fully stateless and designed to be used behind a loadbalancer to provide high availability. The second half of this project is a fully independent front-end website using the RiotJS framework. Written in Bootstrap, and designed for mobile-first, it provides a fully detached interface to the OHMS API. Service Workers are planned to be implemented to improve performance and allow the site to work offline.'
          },
          {
            header: 'Fully Open-Source',
            text: 'OHMS API\s source code can be viewed at github.com/meikg/ohms, and the front-end project can be viewed at github.com/meikg/riot.'
          }
        ],
        img: [
          {
            thumbnail:  '/img/imageunavailable_thumb.jpg',
            fullSize:  '/img/imageunavailable_full.jpg',
            subtitle:   'Images for this project are coming soon.'
          }
        ]
      }
    ];

    this.on('mount', function() {
      $('.image').click(function () {
        var fullsize = $(this).data('fullsize');
        var subtitle = $(this).data('subtitle');
        $('#image-viewer-img').attr("src", fullsize);
        $('#image-viewer-subtitle').html(subtitle);
        $('#image-viewer').modal();
      });
      // If an ID has been provided, then smooth scroll to that location.
      var id = opts.id;
      $( document ).ready(function() {
        if (typeof id !== 'undefined') {
          // Get the bounding box of the element.
          var element = document.getElementById(id);
          // If it's an element, scroll to it. If not, just scroll to the top of the page instead.
          riot.route('/projects');
          if (element) {
            $('html, body').animate({
              scrollTop: element.getBoundingClientRect().top
            }, 1000);
          } else {
            $('html, body').animate({
              scrollTop: 0
            }, 1000);
          }
        }
        ;
      });
    });
  </script>

  <style scoped>
    .toplinks {
      padding-bottom: 20px ;
    }

    .image {
      padding: 10px 0 10px 0;
    }

    .projects {
      border-bottom: 1px solid #ccc;
      margin-bottom: 150px;
    }

    .projects-bottom {
      margin-top: 75px;
    }
  </style>
</projects>