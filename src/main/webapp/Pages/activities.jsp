<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Blank Page - Brand</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/activities_assets/bootstrap/css/bootstrap.min.css?h=11ac1ec3fb3954cebf1fdd43cbdb6204">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/typicons/2.0.9/typicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/activities_assets/css/styles.min.css?h=efffc71e19b25acb20e6cd68d38e5666">
</head>

<body id="page-top">
    <div id="wrapper">
       <jsp:include page="admin_sidebar.jsp" />  
        <div class="d-flex flex-column" id="content-wrapper">
           <jsp:include page="navbar.jsp" />  
            <div id="content">
                <div class="container-fluid">
                    <h3 class="text-dark mb-1">Activités</h3>
                </div>
                <!-- Start: Article List -->
                <section class="article-list">
                    <div class="container">
                        <!-- Start: Intro -->
                        <div class="intro"></div>
                        <!-- End: Intro -->
                        <!-- Start: Articles -->
                        <div class="row articles">
                            <div class="col-sm-6 col-md-4 item" style="padding-top: 15px;">
                                <a href="#"><img class="img-fluid" src="<%=request.getContextPath()%>/css/activities_assets/img/desk.jpg?h=2ce14ccffed9db677708648866dc8fcf"></a>
                                <h3 class="name">Article Title</h3>
                                <p class="description" style="font-size: 10px;font-weight: bold;">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, interdum justo suscipit id.<br><strong>Aenean
                                        tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in
                                        tellus eu gravida. Aliquam varius finibus est, interdum justo suscipit
                                        id.</strong><br><strong>Aenean tortor est, vulputate quis leo in, vehicula
                                        rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus
                                        est, interdum justo suscipit id.</strong><br><br></p><a class="action" href="#"><i class="typcn typcn-user-add"></i></a>
                            </div>
                        </div>
                        <!-- End: Articles -->
                    </div>
                </section>
                <!-- End: Article List -->
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Brand 2022</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/css/activities_assets/js/script.min.js?h=4d952d21517087db850f0bbc41a815ca"></script>
</body>

</html>