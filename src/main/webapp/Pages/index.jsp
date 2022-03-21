<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title>Home - Brand</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/home_assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+Inscriptional+Pahlavi&amp;display=swap" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/home_assets/css/styles.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css" />
</head>

<body style="height: auto">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar" style="background: var(--bs-blue); height: 60px; padding: 0px">
        <div class="container">
            <a class="navbar-brand logo" href="#">Brand</a
        ><button
          data-bs-toggle="collapse"
          class="navbar-toggler"
          data-bs-target="#navcol-1"
        >
          <span class="visually-hidden">Toggle navigation</span
          ><span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navcol-1">
          <ul class="navbar-nav ms-auto">
            <li
              class="nav-item"
              style="padding-right: 0; height: 40px; width: 70px"
            >
              <!-- Start: Clean Button (Scale Hover Effect) --><button
                class="btn btn-primary"
                type="button"
                style="
                  border-radius: 48px;
                  font-size: 16px;
                  background: rgb(28, 119, 252);
                  font-family: 'Noto Sans Inscriptional Pahlavi', sans-serif;
                  font-weight: bold;
                  width: 69px;
                  border-width: 0px;
                  height: 38px;
                "
              >
              <a href="<%=request.getContextPath()%>/Login" style="text-decoration:none; color:white" >
                Login
                </a>
              </button>
              <!-- End: Clean Button (Scale Hover Effect) -->
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <main class="page landing-page" style="height: 628px; padding-top: 0px">
      <section
        class="clean-block clean-hero"
        style=
        "height: auto;
          border-color: #464c50;
          color: rgba(37, 88, 144);
          background: url(&quot;<%=request.getContextPath()%>/css/home_assets/img/intro-bg.svg&quot;)
          center / cover no-repeat,">
        <div class="text">
          <h2>JOIN THE BEST GROWING COMMUNITY</h2>
          <p>
            <br />Make each new day count by helping someone or just making
            someone smile.<br /><br />
          </p>
          <button
            class="btn btn-outline-light btn-lg"
            type="button"
            style="border-radius: 20px"
          >
          <a href="<%=request.getContextPath()%>/SignUp" style="text-decoration:none">
            Join Us
            </a>
          </button>
        </div>
      </section>
    </main>
    <!-- Start: Footer Dark -->
    <footer class="page-footer dark" style="padding-top: 0px; height: auto">
      <div
        class="footer-copyright"
        style="
          padding-top: 0px;
          padding-bottom: 0px;
          background: rgb(33, 37, 41);
          border-color: rgba(33, 37, 41, 0);
          color: rgb(33, 37, 41);
          height: 63px;
        "
      >
        <p style="color: rgb(255, 255, 255); height: 16px; margin: 18px">
          © 2022 Copyright
        </p>
      </div>
    </footer>
    <!-- End: Footer Dark -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="<%=request.getContextPath()%>/css/home_assets/js/script.min.js?h=1665ca77920bb6c16d0d2edee4a77966"></script>
  </body>
</html>