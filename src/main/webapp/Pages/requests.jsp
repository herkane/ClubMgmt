<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Requests</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/requests_assets/bootstrap/css/bootstrap.min.css?h=a3518bd893e6056c0b49508b97823058">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/requests_assets/fonts/fontawesome5-overrides.min.css?h=c2cd6f3f03048985338d131849447f65">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/requests_assets/css/styles.min.css?h=d447d003c6eb91a7b65e230c0da9e524">
</head>

<body id="page-top">
    <div id="wrapper">
      <jsp:include page="admin_sidebar.jsp"/>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
		       <jsp:include page="navbar.jsp"/>
                <div class="container-fluid">
                    <div class="row">
                        <c:forEach items="${list}" var="listItem">
                        	<div class="col-md-6 col-lg-4"
                            style="margin: 10px;width: 270px;padding: 0;box-shadow: 3px 3px 11px 0px lightgrey;border-radius: 15px;">
                            <div class="card" style="padding: 0; border-radius: 15px"><img class="card-img-top w-100 d-block"
                                    src="<%=request.getContextPath()%>/css/requests_assets/img/avatars/avatar.png?h=4f3b3079a8798be78ae4a78074dcd574"
                                    style="margin: 0px;margin-top: 5px;">
                                <div class="card-body">
                                    <h4 class="card-title"><i class="fa fa-user"
                                            style="margin: 5px;width: 16px;height: 16px;"></i><c:out value="${listItem.getUser().getPrenom()}"/> <c:out value="${listItem.getUser().getNom()}"/></h4>
                                    <p class="card-text"><i class="fa fa-envelope"
                                            style="margin: 5px;"></i><c:out value="${listItem.getUser().getEmail()}"/></p>
                                    <p class="card-text"><i class="fa fa-calendar"
                                            style="margin: 5px;width: 16px;"></i><c:out value="${listItem.getDate()}"/></p>
                                </div>
                                <div style="margin: 5px;">
	                                <form action="<%=request.getContextPath()%>/Account/Requests" method="post">
	                                    <!-- Start: Split Button Success -->
		                                    <button value="${listItem.getUser().getId()}" name="accept" type="submit" class="btn btn-success btn-icon-split" style="margin-right: 3px;margin-left: 3px; outline: none; border: none;">
		                                    <span class="text-white-50 icon"><i class="fas fa-check"></i></span>
		                                    <span class="text-white text">Accept</span>
		                                    </button>
	                                    <!-- End: Split Button Success -->
	                                    
	                                    <!-- Start: Split Button Danger -->
		                                    <button value="${listItem.getUser().getId()}" type="submit" name="refuse" class="btn btn-danger btn-icon-split" style="margin-right: 3px;margin-left: 3px;outline: none; border: none;">
		                                    <span class="text-white-50 icon"><i class="fas fa-trash"></i></span>
		                                    <span class="text-white text">Decline</span>
	                                    	</button>
	                                    <!-- End: Split Button Danger -->
									</form>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        
                    </div>
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
    <script src="<%=request.getContextPath()%>/css/requests_assets/js/script.min.js?h=4d952d21517087db850f0bbc41a815ca"></script>
</body>

</html>