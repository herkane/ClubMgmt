<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Table - Brand</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/dashboard_assets/bootstrap/css/bootstrap.min.css?h=11ac1ec3fb3954cebf1fdd43cbdb6204">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
</head>

<body id="page-top">
    <div id="wrapper">
		<jsp:include page="admin_sidebar.jsp" />  
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
				<jsp:include page="navbar.jsp" />
                <div class="container-fluid">
                    <h3 class="text-dark mb-4">Liste des adh�rents</h3>
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-primary m-0 fw-bold">Utilisateurs abonn�es</p>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                        	for(int i = 0; i < 10; i++){
                                        %>
                                        <tr>
                                            <td><img class="rounded-circle me-2" width="30" height="30" src="<%=request.getContextPath()%>/css/lists_assets/img/avatars/avatar1.jpeg">Airi Satou
                                            </td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>33</td>
                                            <td>2008/11/28</td>
                                            <td>$162,700</td>
                                        </tr>
                                        <%
                                        	}
                                        %>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td><strong>Name</strong></td>
                                            <td><strong>Position</strong></td>
                                            <td><strong>Office</strong></td>
                                            <td><strong>Age</strong></td>
                                            <td><strong>Start date</strong></td>
                                            <td><strong>Salary</strong></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright � Brand 2022</span></div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/css/lists_assets/js/script.min.js?h=4d952d21517087db850f0bbc41a815ca"></script>
</body>

</html>