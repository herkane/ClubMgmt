<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
    />
    <title>Register - Brand</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/signup_assets/bootstrap/css/bootstrap.min.css?h=6a70c3ae7291ddf5d046c5eed886e957" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/signin_assets/css/styles.min.css?h=51fe63593838648bb219f3824fc7486c">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" />
  </head>
  <body
    class="bg-gradient-primary"  style="color: rgb(255, 255, 255); background: rgb(255, 255, 255)"
  >
  
  
  <!-- Start: Navigation with Button -->
    <nav class="navbar navbar-light navbar-expand-lg navigation-clean-button">
        <div class="container"><a class="navbar-brand" href="<%=request.getContextPath()%>/Index">Company Name</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle
                    navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                </ul>
                       
            </div>
        </div>
    </nav>
    
    
    <div class="container">
        <div class="row justify-content-center" >
            <div class="col-md-9 col-lg-12 col-xl-10" >
                <div class="card shadow-lg o-hidden border-0 my-5" style="margin-top:0.5rem! important">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-login-image" style="background: url(&quot;<%=request.getContextPath()%>/css/signin_assets/img/welcome.svg?h=13daa808663ca5c8df5445f7b9775855&quot;) center / contain no-repeat;">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h4 class="text-dark mb-4">Create an Account!</h4>
                                    </div>
                 <form class="user" method="POST" action="<%=request.getContextPath()%>/SignUp">
                  <div class="row mb-3">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                      <input
                        class="form-control form-control-user"
                        type="text"
                        id="exampleFirstName"
                        placeholder="First Name"
                        name="first_name"
                      />
                    </div>
                    <div class="col-sm-6">
                      <input
                        class="form-control form-control-user"
                        type="text"
                        id="exampleFirstName"
                        placeholder="Last Name"
                        name="last_name"
                      />
                    </div>
                  </div>
                  <div class="mb-3">
                    <input
                      class="form-control form-control-user"
                      type="email"
                      id="exampleInputEmail"
                      aria-describedby="emailHelp"
                      placeholder="Email Address"
                      name="email"
                    />
                  </div>
                  <div class="row mb-3">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                      <input
                        class="form-control form-control-user"
                        type="password"
                        id="examplePasswordInput"
                        placeholder="Password"
                        name="password"
                      />
                    </div>
                    <div class="col-sm-6">
                      <input
                        class="form-control form-control-user"
                        type="password"
                        id="exampleRepeatPasswordInput"
                        placeholder="Repeat Password"
                        name="password_repeat"
                      />
                    </div>
                  </div>
                  
                  <div style="text-align:-webkit-center;">
                  <div class="card mb-3" style="width: 190px; align-items:center; text-align:-webkit-center">
                    <div class="card-body text-center shadow"style="  padding: 0px;padding-top: 0px;padding-left: 0px;padding-bottom: 0px;width: 190px;height: 237.942px;border-radius: 0px; ">
                      <div class="form-input">
  						 <div class="preview" style="align-items:center; text-align:-webkit-center">
                     
                     
                      <img id="file-ip-1-preview"
                        class="rounded-circle mb-3 mt-4"
                        src="<%=request.getContextPath()%>/images/pdp.png?h=13daa808663ca5c8df5445f7b9775855&quot"
                        width="160"
                        height="160" /> 
                       </div>
                      
                      <div class="mb-3">
                      <label for="file-ip-1" style="color: white" class="btn btn-secondary btn-sm">Upload Image</label>
                        <input required="required" id="file-ip-1" class="btn btn-secondary btn-sm" type="file" style="background-color:grey; opacity: 0" onchange="showPreview(event);" accept="image/*">
                      </div>
                    </div>
                  </div>
                  </div>    
                  <button
                    class="btn btn-primary d-block btn-user w-100"
                    type="submit"
                    style="border-radius:5px; color: white">Register Account</button>
                </form>
                                  
                                <div class="text-center">
                  <a class="small" href="<%=request.getContextPath()%>/Login"
                    >Already have an account? Login!</a>
                </div>      
                        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../css/signup_assets/js/script.min.js?h=4d952d21517087db850f0bbc41a815ca"></script>
    
    
    
    
    
    
    
    <script type="text/javascript">
  function showPreview(event){
  if(event.target.files.length > 0){
    var src = URL.createObjectURL(event.target.files[0]);
    var preview = document.getElementById("file-ip-1-preview");
    preview.src = src;
    preview.style.display = "block";
  }
}
</script>
    
    
  </body>
</html>



