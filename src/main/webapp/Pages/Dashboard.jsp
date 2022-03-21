<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Dashboard - <%=request.getAttribute("l_name")%> </title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/dashboard_assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
</head>

<body id="page-top">
    <div id="wrapper">
        <jsp:include page="admin_sidebar.jsp" />  
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content" style="opacity: 1;">
                <jsp:include page="navbar.jsp" />
                <div class="container-fluid">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4"></div>
                    <div class="row" style="padding: 28px;margin-right: 6px;justify-content: center;">
                        <div class="col-md-6 col-xl-3 mb-4" style="width: 360px;height: 150px;">
                            <div class="card shadow border-start-primary py-2" style="height: 145px;">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-primary fw-bold text-xs mb-1"><span style="font-size: 20px;">INSCRIPTIONS (HEBDOMADAIRE)</span></div>
                                            <div class="text-dark fw-bold h5 mb-0"><span style="font-size: 30px;">+203</span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-clipboard-list fa-2x text-gray-300" style="font-size: 60px;"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4" style="width: 360px;height: 150px;">
                            <div class="card shadow border-start-primary py-2" style="height: 145px;">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-primary fw-bold text-xs mb-1"><span style="font-size: 20px;color: var(--bs-green);">SOUSCRPTIONS
                                                    (HEBDOMADAIRE)</span></div>
                                            <div class="text-dark fw-bold h5 mb-0"><span style="font-size: 30px;">+203</span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-dollar-sign fa-2x text-gray-300" style="font-size: 60px;"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4" style="width: 360px;height: 150px;">
                            <div class="card shadow border-start-primary py-2" style="height: 145px;">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-primary fw-bold text-xs mb-1"><span style="font-size: 20px;color: #e83e8c;">INSCRIPTIONS (Totale)</span>
                                            </div>
                                            <div class="text-dark fw-bold h5 mb-0"><span style="font-size: 30px;">+203</span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-clipboard-list fa-2x text-gray-300" style="font-size: 60px;"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3 mb-4" style="width: 360px;height: 150px;">
                            <div class="card shadow border-start-primary py-2" style="height: 145px;">
                                <div class="card-body">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col me-2">
                                            <div class="text-uppercase text-primary fw-bold text-xs mb-1"><span style="font-size: 20px;color: var(--bs-warning);">SOUSCRPTIONS
                                                    (Totale)</span></div>
                                            <div class="text-dark fw-bold h5 mb-0"><span style="font-size: 30px;">+203</span></div>
                                        </div>
                                        <div class="col-auto"><i class="fas fa-dollar-sign fa-2x text-gray-300" style="font-size: 60px;"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Brand 2022</span></div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/css/dashboard_assets/js/script.min.js?h=4d952d21517087db850f0bbc41a815ca"></script>
</body>

</html>