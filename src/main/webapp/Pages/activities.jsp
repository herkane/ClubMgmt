<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Blank Page - Brand</title>
    <link rel="stylesheet" href="../css/activities_assets/bootstrap/css/bootstrap.min.css?h=11ac1ec3fb3954cebf1fdd43cbdb6204">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/typicons/2.0.9/typicons.min.css">
    <link rel="stylesheet" href="../css/activities_assets/css/styles.min.css?h=efffc71e19b25acb20e6cd68d38e5666">
</head>

<body id="page-top">
    <div id="wrapper">
       <jsp:include page="admin_sidebar.jsp" />  
        <div class="d-flex flex-column" id="content-wrapper">
            <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle me-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                    <h3 class="text-dark mb-0">Bonjour Valerie,</h3>
                    <ul class="navbar-nav flex-nowrap ms-auto">
                        <li class="nav-item dropdown d-sm-none no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"><i
                                    class="fas fa-search"></i></a>
                            <div class="dropdown-menu dropdown-menu-end p-3 animated--grow-in" aria-labelledby="searchDropdown">
                                <form class="me-auto navbar-search w-100">
                                    <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                        <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                                    </div>
                                </form>
                            </div>
                        </li>
                        <li class="nav-item dropdown no-arrow mx-1">
                            <div class="shadow dropdown-list dropdown-menu dropdown-menu-end" aria-labelledby="alertsDropdown"></div>
                        </li>
                        <div class="d-none d-sm-block topbar-divider"></div>
                        <li class="nav-item dropdown no-arrow">
                            <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"><span
                                        class="d-none d-lg-inline me-2 text-gray-600 small">Valerie Luna</span><img
                                        class="border rounded-circle img-profile"
                                        src="../css/activities_assets/img/avatars/avatar1.jpeg?h=0ecc82101fb9a10ca459432faa8c0656"></a>
                                <div class="dropdown-menu shadow dropdown-menu-end animated--grow-in"><a class="dropdown-item" href="#"><i
                                            class="fas fa-user fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Profile</a>
                                    <div class="dropdown-divider"></div><a class="dropdown-item" href="#"><i
                                            class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Logout</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
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
                                <a href="#"><img class="img-fluid" src="../css/activities_assets/img/desk.jpg?h=2ce14ccffed9db677708648866dc8fcf"></a>
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
    <script src="../css/activities_assets/js/script.min.js?h=4d952d21517087db850f0bbc41a815ca"></script>
</body>

</html>