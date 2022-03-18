<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <title>Dashboard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/figma.css">
</head>

<body>
    <div class="wrapper d-flex align-items-stretch">
        <jsp:include page="sidebar.jsp">  
			<jsp:param name="f_name" value="${user.prenom }" />  
			<jsp:param name="l_name" value="${user.nom }" />  
		</jsp:include>  
        <!-- Page Content  -->
        <div id="content" class="p-4 p-md-5 pt-5">
            < <main class="page service-page">
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
                  
                  src="../css/demandes_assets/img/scenery/image5.jpg"
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
                
                
                
                
               
        </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>