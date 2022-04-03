<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- Start: Sidebar -->
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0" style="background: rgb(28,57,142)">
            <div class="container-fluid d-flex flex-column p-0" style="position: sticky;top: 0">
                <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="Dashboard.jsp">
                    <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                    <div class="sidebar-brand-text mx-3"><span>BRAND</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="navbar-nav text-light" id="accordionSidebar" style="height: 400px;margin-top: 0px;margin-bottom: 50px">
                
                	<!-- ADMIN'S SIDEBAR -->
                    <%if(request.getAttribute("role").equals(0)){ %>
                    	<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/Account"><i
                                class="fas fa-tachometer-alt"></i><span>&nbsp;DASHBOARD</span></a></li>
                    <hr class="sidebar-divider">
                    <div class="sidebar-heading">
                        <p class="mb-0">CLUB MANAGMENT</p>
                    </div>
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/UsersList">
                    <i class="fas fa-table"></i><span>&nbsp;User's list</span></a></li>
                                
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/SubsList">
                    <i class="fas fa-user-friends"></i><span>&nbsp;Sub's list</span></a></li>
                    
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/Activities">
                    <i class="fas fa-hand-holding-heart"></i><span>Activities</span></a></li>
                                
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/Requests">
                    <i class="fas fa-user-clock"></i><span>Membership requests</span></a></li>
                    
                    <hr class="sidebar-divider">
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/AddActivity">
                    <i class="fas fa-plus"></i><span>Add activity</span></a></li>
                    
                    <!-- SUB'S SIDEBAR -->
                    <%} else if(request.getAttribute("role").equals(1)){%>
                    	<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/Account"><i
                                class="fas fa-tachometer-alt"></i><span>&nbsp;DASHBOARD</span></a></li>
                    <hr class="sidebar-divider">
                    <div class="sidebar-heading">
                        <p class="mb-0">MY CLUB</p>
                    </div>
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/UsersList"><i
                                class="fas fa-table"></i><span>&nbsp;New members</span></a></li>
                                
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/SubsList">
                    <i class="fas fa-user-friends"></i><span>&nbsp;My friendslist</span></a></li>
                    
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/Activities">
                    <i class="fas fa-hand-holding-heart"></i><span>Activities</span></a></li>
                    
                    <!-- USER'S SIDEBAR -->
                    <%} else if(request.getAttribute("role").equals(2)){ %>
                    <li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/Account"><i
                                class="fas fa-tachometer-alt"></i><span>&nbsp;DASHBOARD</span></a></li>
                    <hr class="sidebar-divider">
                    <div class="sidebar-heading">
                        <p class="mb-0">MY CLUB</p>
                    </div>
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/UsersList">
                    <i class="fas fa-table"></i><span>&nbsp;New Members</span></a></li>
                                
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/SubsList">
                    <i class="fas fa-user-friends"></i><span>&nbsp;Our members</span></a></li>
                    
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/Activities">
                    <i class="fas fa-hand-holding-heart"></i><span>Our activities</span></a></li>
                    
                    <hr class="sidebar-divider">
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Account/JoinUs">
                    <i class="fas fa-crown"></i><span>Join us</span></a></li>
                    <%} %>
                </ul>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <!-- End: Sidebar -->
</html>