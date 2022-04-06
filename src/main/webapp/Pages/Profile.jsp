<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
    />
    <title>Profile - Brand</title>
    <link rel="stylesheet"
      href="<%=request.getContextPath() %>/css/profil_assets/bootstrap/css/bootstrap.min.css?h=81031c597b710e11aee3122e1bd58298"
    />
    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.12.0/css/all.css"
    />
  </head>
  <body id="page-top">
    <div id="wrapper">
      <!-- Start: Sidebar -->
      <jsp:include page="admin_sidebar.jsp"/>
      <!-- End: Sidebar -->
      <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
          <jsp:include page="navbar.jsp"/>
          <div class="container-fluid">
            <h3 class="text-dark mb-4">Profile</h3>
            <div class="row mb-3">
              <div class="col-lg-4">
                <div class="card mb-3">
                  <div class="card-body text-center shadow">
                    <img
                      class="rounded-circle mb-3 mt-4"
                      src="<%=request.getContextPath() %>/css/profil_assets/img/dogs/image2.jpeg?h=a0a7d00bcd8e4f84f4d8ce636a8f94d4"
                      width="160"
                      height="160"
                    />
                    <div class="mb-3">
                      <button class="btn btn-primary btn-sm" type="button">
                        Changer Image
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-8">
                <div class="row mb-3 d-none">
                  <div class="col">
                    <div class="card textwhite bg-primary text-white shadow">
                      <div class="card-body">
                        <div class="row mb-2">
                          <div class="col">
                            <p class="m-0">Peformance</p>
                            <p class="m-0"><strong>65.2%</strong></p>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-rocket fa-2x"></i>
                          </div>
                        </div>
                        <p class="text-white-50 small m-0">
                          <i class="fas fa-arrow-up"></i>&nbsp;5% since last
                          month
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="col">
                    <div class="card textwhite bg-success text-white shadow">
                      <div class="card-body">
                        <div class="row mb-2">
                          <div class="col">
                            <p class="m-0">Peformance</p>
                            <p class="m-0"><strong>65.2%</strong></p>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-rocket fa-2x"></i>
                          </div>
                        </div>
                        <p class="text-white-50 small m-0">
                          <i class="fas fa-arrow-up"></i>&nbsp;5% since last
                          month
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <div class="card shadow mb-3">
                      <div class="card-header py-3">
                        <p class="text-primary m-0 fw-bold">User Settings</p>
                      </div>
                      <div class="card-body">
                        <form action="<%=request.getContextPath()%>/Account/Profile" method="post">
                          <div class="row">
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="first_name"
                                  ><strong>Pr&eacutenom</strong></label>
                                  <input class="form-control"
                                  type="text"
                                  id="first_name"
                                  value="<%=request.getAttribute("f_name")%>"
                                  placeholder="Fatima"
                                  name="f_name" />
                              </div>
                            </div>
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="last_name"
                                  ><strong>Nom</strong></label
                                ><input
                                  class="form-control"
                                  type="text"
                                  id="last_name"
                                    value="<%=request.getAttribute("l_name")%>"
                                  placeholder="El hadeg"
                                  name="l_name"
                                />
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="email"
                                  ><strong>Email </strong></label
                                ><input
                                  class="form-control"
                                  type="email"
                                  id="email"
                                  placeholder="user@example.com"
                                  value="<%=request.getAttribute("email")%>"
                                  name="email"
                                  disabled
                                />
                              </div>
                            </div>
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="username"
                                  ><strong>Mot de passe</strong></label
                                ><input
                                  class="form-control"
                                  type="password"
                                  id="username"
                                  placeholder="Password"
                                  name="password"
                                />
                              </div>
                            </div>
                          </div>
                          	<%if(request.getAttribute("isCurrU").equals(true)){%>
	                          	<div class="mb-3">
				                            <button
				                            name="id"
				                            value="<%=request.getAttribute("id") %>"
				                              class="btn btn-primary btn-sm"
				                              type="submit" >
				                              Update
				                            </button>
				                          </div>
                          	<%}%>
                        </form>
                        <%if(request.getAttribute("role").equals(0)){%>
                        <%if(request.getAttribute("isCurrU").equals(false)){%>
                        <div style="display: flex;">
                        	<form style="margin: 5px" action="<%=request.getContextPath()%>/Account/DisableAcc" method="post">
                        <button
                        	name="disable"
                        	value="<%=request.getAttribute("id") %>"
                              class="btn btn-danger btn-sm"
                              type="submit" >
                              Disable
                            </button>
                            </form>
                            <form style="margin: 5px" action="<%=request.getContextPath()%>/Account/EnableAcc" method="post">
                            <button
                            name="enable"
                              	value="<%=request.getAttribute("id") %>"
                              style="color: white"
                              class="btn btn-success btn-sm"
                              type="submit" >
                              Enable
                            </button>
                            </form>
                        </div>
                        <%}%>
                        <%}%>
                      </div>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <footer class="bg-white sticky-footer">
          <div class="container my-auto">
            <div class="text-center my-auto copyright">
              <span>Copyright © Brand 2022</span>
            </div>
          </div>
        </footer>
      </div>
      <a class="border rounded d-inline scroll-to-top" href="#page-top"
        ><i class="fas fa-angle-up"></i
      ></a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath() %>/css/profil_assets/js/script.min.js?h=4d952d21517087db850f0bbc41a815ca"></script>
  </body>
</html>
