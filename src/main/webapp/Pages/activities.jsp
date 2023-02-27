<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Blank Page - Brand</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/activities_assets/bootstrap/css/bootstrap.min.css?h=11ac1ec3fb3954cebf1fdd43cbdb6204">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    
    
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
                         <%int i = 1;%>
                          <c:forEach items="${act_list}" var="listItem">
                        	
	                            <div class="col-sm-6 col-md-4 item" style="padding-top: 15px;">
	                                <a href="#"><img class="img-fluid" src="<%=request.getContextPath()%>/css/activities_assets/img/desk.jpg?h=2ce14ccffed9db677708648866dc8fcf"></a>
	                                <h3 class="name"><c:out value="${listItem.getTitle()}"/></h3>
	                                <h4 class="name"><i class="fa-solid fa-users"></i>&nbsp<c:out value="${listItem.getNbr_participants()}"/></h4>
	                                <p class="description" style="font-size: 13px;font-weight: bold;"><c:out value="${listItem.getDescription()}"/></strong><br><br></p>
	                                <%if(request.getAttribute("role").equals(1)){ %>
	                                	<c:choose>
	                                		<c:when test="${listItem.getUsers().contains(user)}" >
	                                			<form method="post" action="<%=request.getContextPath()%>/Account/UnjoinActivity">
				                                	<!-- Start: Split Button Danger -->
					                                    <button value="${listItem.getId()}" type="submit" name="id"  class="btn btn-danger btn-icon-split" style="margin-right: 3px;margin-left: 3px;outline: none; border: none;">
					                                    <span class="text-white-50 icon"><i class="fa-solid fa-user-minus"></i></span>
					                                    <span class="text-white text">Leave</span>
				                                    	</button>
				                                    <!-- End: Split Button Danger -->
				                                	<input name="uId" value="${user.getId()}" hidden="hidden"/>
			                            		</form>
	                                		</c:when>
	                                		<c:otherwise>
	                                		<form method="post" action="<%=request.getContextPath()%>/Account/JoinActivity">
				                                	<!-- Start: Split Button Danger -->
					                                    <button value="${listItem.getId()}" type="submit" name="id"  class="btn btn-success btn-icon-split" style="margin-right: 3px;margin-left: 3px;outline: none; border: none;">
					                                    <span class="text-white-50 icon"><i class="fa-solid fa-user-plus"></i></span>
					                                    <span class="text-white text">Join</span>
				                                    	</button>
				                                    <!-- End: Split Button Danger -->
				                                	<input name="uId" value="${user.getId()}" hidden="hidden"/>
			                            		</form>
		                                		
	                                		</c:otherwise>
	                                	</c:choose>
	                                
                            		<%}%>
	                            </div>
                            <%i++;%>
                          </c:forEach>
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
    <script>
    function change() // no ';' here
    {
        var elem = document.getElementById("btn");
        if (elem.className == "fa-solid fa-user-plus") elem.className = "fa-solid fa-user-check";
        else elem.className = "fa-solid fa-user-minus";
    }
    </script>
</body>

</html>