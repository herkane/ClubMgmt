<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<nav id="sidebar">
            <div class="img bg-wrap text-center py-4" style="background-image: url(images/bg_1.jpg);">
                <div class="user-logo">
                    <div class="img" style="background-image: url(images/logo.jpg);"></div>
                    <h3><%=request.getParameter("l_name") %> <%=request.getParameter("f_name") %></h3>
                </div>
            </div>
            <ul class="list-unstyled components mb-5">
                <li class="active">
                    <a href="#"><span class="fa fa-home mr-3"></span> Home</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-users mr-3 notif"><small class="d-flex align-items-center justify-content-center">+31</small></span>New members</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-gift mr-3"></span> Gift Code</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-trophy mr-3"></span> Top Review</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-cog mr-3"></span> Settings</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-support mr-3"></span> Support</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-sign-out mr-3"></span> Sign Out</a>
                </li>
            </ul>

        </nav>