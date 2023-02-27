<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Add activity - Brand</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/add_activity_assets/bootstrap/css/bootstrap.min.css?h=0fb8bd8be55fcb7d9fa56b433c56b9ff">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/add_activity_assets/fonts/fontawesome5-overrides.min.css?h=c2cd6f3f03048985338d131849447f65">
</head>

<body id="page-top">
    <div id="wrapper">
                              <jsp:include page="admin_sidebar.jsp" />  
    
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                          <jsp:include page="navbar.jsp" />  
               
                <div class="container-fluid">
                    <h3 class="text-dark mb-1">Add new activity</h3>
                    <form style="margin: 40px;" method="post" action="<%=request.getContextPath()%>/Account/AddActivity" >
                        <div class="mb-3"><label class="form-label" for="name">Activity title</label>
                        	<input class="form-control" type="text" id="name" name="title">
                        </div>
                        <div class="mb-3"><label class="form-label" for="subject">Activity header
                                description</label>
                                <input class="form-control" type="text" id="subject" name="header">
                        </div>
                        <div class="mb-3"><label class="form-label" for="message">Activity specific
                                details</label><textarea class="form-control" id="message" name="desc"></textarea>
                        </div>
                        <div class="mb-3"><button class="btn btn-primary" type="submit">Add activity</button></div>
                    </form>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © Brand 2022</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/script.min.js?h=4d952d21517087db850f0bbc41a815ca"></script>
</body>

</html>