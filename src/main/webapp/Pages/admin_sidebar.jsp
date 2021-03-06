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
                    <li class="nav-item"><a class="nav-link active" href="Dashboard.jsp"><i
                                class="fas fa-tachometer-alt"></i><span>&nbsp;Tableau de bord</span></a></li>
                    <hr class="sidebar-divider">
                    <div class="sidebar-heading">
                        <p class="mb-0">gestion de club</p>
                    </div>
                    <li class="nav-item"><a class="nav-link" href="users_list.jsp"><i
                                class="fas fa-table"></i><span>&nbsp;Liste des utilisateurs</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="subs_list.jsp"><i
                                class="fas fa-user-friends"></i><span>&nbsp;Liste des abonn?es</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="activities.jsp"><i
                                class="fas fa-hand-holding-heart"></i><span>Activit?s</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="tables.html"><i
                                class="fas fa-user-clock"></i><span>Demandes d'adhesion</span></a></li>
                    <hr class="sidebar-divider">
                    <li class="nav-item"><a class="nav-link" href="adhesion.jsp"><i
                                class="fas fa-crown"></i><span>S'abonner</span></a></li>
                </ul>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <!-- End: Sidebar -->
</html>