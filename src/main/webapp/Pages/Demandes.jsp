<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
  
  <style>
  #refuser:hover{
  	background-color:red;
  	color:white;
  	border-color:white
  }
  #refuser{
  background-color:white;
  	color:red;
  	border-color:red;
  }
  
    #accepter:hover{
  	background-color:green;
  	color:white;
  	border-color:white
  }
  #accepter{
  background-color:white;
  	color:green;
  	border-color:green;
  }
  </style>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
    />
    <title>Services - Brand</title>
    <link
      rel="stylesheet"
      href="<%=request.getContextPath()%>/css/demandes_assets/bootstrap/css/bootstrap.min.css?h=81031c597b710e11aee3122e1bd58298"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css"
    />
    <link
      rel="stylesheet"
      href="<%=request.getContextPath()%>/css/demandes_assets/css/styles.min.css?h=2528b47b032341ce951bad4eb7bec58f"
    />
  </head>
  <body>
    <nav
      class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar"
    >
      <div class="container">
        <a class="navbar-brand logo" href="Dashboard.jsp">Brand</a
        ><button
          data-bs-toggle="collapse"
          class="navbar-toggler"
          data-bs-target="#navcol-1"
        >
          <span class="visually-hidden">Toggle navigation</span
          ><span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navcol-1">
          <ul class="navbar-nav ms-auto"></ul>
        </div>
      </div>
    </nav>
    <main class="page service-page">
      <section class="clean-block clean-services dark">
        <div class="container">
          <div class="block-heading" style="padding-top: 15px">
            <h2 class="text-info">Demandes d'adhesion</h2>
          </div>
            <div class="row" style="text-align:-webkit-center">
          <%
          for(int i=0;i<6;i++){
          %>
          
        
            <div class="col-md-6 col-lg-4">
              <div class="card" style="align-items:center; 
    border-radius: 45% 45% 0 0;
    box-shadow: 3px 3px 10px lightgrey;position: relative;
    width: fit-content;">
                <img
                style="width: 300px;height: 300px; border-radius: 50%;  box-shadow:0 5px 15px rgba(0,0,0, 0.4") ;"
   
                  class="card-img-top d-block"
                  
                  src="<%=request.getContextPath()%>/css/demandes_assets/img/scenery/image5.jpg"
                />
                <div class="card-body"><h4 class="card-title">Fatima</h4></div>
                <div>
                  <button class="btn btn-outline-primary btn-sm"  type="button" id="accepter">
                    Accepter
                  </button>
               
                  <button class="btn btn-outline-primary btn-sm" id="refuser" >
                    Refuser
                  </button>
                </div>
              </div>
            </div>
         
          
          <%
          }
          %>
          
           </div>
        </div>
      </section>
    </main>
    <!-- Start: Footer Dark -->
    <footer class="page-footer dark" style="padding-top: 0px">
      <div class="footer-copyright"><p>© 2022 Copyright Text</p></div>
    </footer>
    <!-- End: Footer Dark -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="<%=request.getContextPath()%>/css/demandes_assets/js/script.min.js?h=1665ca77920bb6c16d0d2edee4a77966"></script>
  </body>
</html>