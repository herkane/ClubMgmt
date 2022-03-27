<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
    />
    <title>Home - Brand</title>
    <link
      rel="stylesheet"
      href="<%=request.getContextPath()%>/css/home_assets/bootstrap/css/bootstrap.min.css?h=a4a4b4ec2caaeea34fdeabb9e8eaf2dd"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Cabin:700"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link
      rel="stylesheet"
      href="<%=request.getContextPath()%>/css/home_assets/css/styles.min.css?h=6677ea1bbff535befea0f9bbf0c6088a"
    />
    
    
    <style>
    .button{
    color:white;
    background-color:rgba(255,255,255,.3);
    border-radius:0px;
    margin-right:50px;
    margin-left:50px;
    font-family: "Cabin","Helvetica Neue",Helvetica,Arial,sans-serif;
    padding:10px;
    }
    </style>
  </head>
  <body
    id="page-top"
    data-bs-spy="scroll"
    data-bs-target="#mainNav"
    data-bs-offset="77"
  >
    <nav class="navbar navbar-light navbar-expand-md fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="#">Brand</a
        ><button
          data-bs-toggle="collapse"
          class="navbar-toggler navbar-toggler-right"
          data-bs-target="#navbarResponsive"
          type="button"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
          value="Menu"
        >
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item nav-link">
              <a class="nav-link active" href="#about">About</a>
            </li>
            <li class="nav-item nav-link">
              <a class="nav-link" href="#download">Contact</a>
            </li>
            <li class="nav-item nav-link">
              <a class="nav-link" href="#contact">Get in touch</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <header
      class="masthead"
      style="
        background-image: url('<%=request.getContextPath()%>/images/bg.jpeg');
      "
    >
      <div class="intro-body">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <h1 class="brand-heading">grayscale</h1>
              <p class="intro-text">
                A free, responsive, one page Bootstrap theme.<br />Created with
                love.
              </p>
              <button class="button navbar-toggler navbar-toggler-right"> <a href="<%=request.getContextPath()%>/Login" style="text-decoration:none;color:white">Login</a></button>
              <button class="button navbar-toggler navbar-toggler-right"> <a href="<%=request.getContextPath()%>/SignUp" style="text-decoration:none;color:white">Register</a></button>
            </div>
          </div>
        </div>
      </div>
    </header>
    <section class="text-center content-section" id="about" style="padding-bottom:250px">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>About grayscale</h2>
            <p>
             Hi!! Achraf, m Fatima
            </p>
           
          </div>
        </div>
      </div>
    </section>
    <section
      class="text-center download-section content-section"
      id="download"
      style="
        background-image: url('<%=request.getContextPath()%>/css/home_assets/img/downloads-bg.jpg?h=a1c980f5883ce005385e0ccdc3919d4c');
        padding-top: 70px;
        padding-bottom: 50px;
      "
    >
      <div class="container">
        <div class="col-lg-8 mx-auto">
          <!-- Start: Contact Form Clean -->
          <section class="contact-clean" style="padding: 0; text-align:-webkit-center;">
            <form method="post" style="margin: 0;background-color: #ffffff26; color:white; box-shadow: 1px 1px 5px rgb(0 0 0 / 10%);">
              <h2 class="text-center">Contact us</h2>
              <!-- Start: Success Example -->
              <div class="mb-3">
                <input
                  class="form-control"
                  type="text"
                  name="name"
                  placeholder="Name"
                />
              </div>
              <!-- End: Success Example --><!-- Start: Success Example -->
              <div class="mb-3">
                <input
                  class="form-control"
                  type="text"
                  name="name"
                  placeholder="Email"
                />
              </div>
              <!-- End: Success Example -->
              <div class="mb-3">
                <textarea
                  class="form-control"
                  name="message"
                  placeholder="Message"
                  rows="14"
                ></textarea>
              </div>
              <div class="mb-3" >
                <button class="btn" type="submit" style="background-color:gray; color:white" >send</button>
              </div>
            </form>
          </section>
          <!-- End: Contact Form Clean -->
        </div>
      </div>
    </section>
    <section class="text-center content-section" id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>get in touch</h2>
            <p>
              Feel free to leave us a comment on the<a href="#"
                >&nbsp;Grayscale template overview page</a
              >&nbsp;to give some feedback about this theme!
            </p>
            <ul class="list-inline banner-social-buttons">
              <li class="list-inline-item">
                &nbsp;<button
                  class="btn btn-primary btn-lg btn-default"
                  type="button"
                >
                  <i class="fa fa-google-plus fa-fw"></i
                  ><span class="network-name">&nbsp; Google+</span>
                </button>
              </li>
              <li class="list-inline-item">
                &nbsp;<button
                  class="btn btn-primary btn-lg btn-default"
                  type="button"
                >
                  <i class="fa fa-twitter fa-fw"></i
                  ><span class="network-name">&nbsp;Twitter</span>
                </button>
              </li>
              <li class="list-inline-item">
                &nbsp;<button
                  class="btn btn-primary btn-lg btn-default"
                  type="button"
                >
                  <i class="fa fa-github fa-fw"></i
                  ><span class="network-name">&nbsp;github</span>
                </button>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <footer>
      <div class="container text-center">
        <p>Copyright ©&nbsp;Brand 2022</p>
      </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/css/home_assets/js/script.min.js?h=abade7a6b58120c54533d461e48e360b"></script>
  </body>
</html>
    