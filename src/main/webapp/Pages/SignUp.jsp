<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Register - Brand</title>
    <link rel="stylesheet" href="../css/signup_assets/bootstrap/css/bootstrap.min.css?h=1195d539be9b8ad00796352c8f2b6362">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
</head>

<body class="bg-gradient-primary" style="background: #dddddd;">
    <!-- Start: Navigation with Button -->
    <nav class="navbar navbar-light navbar-expand-lg navigation-clean-button" style="background: #ffffff;">
        <div class="container"><a class="navbar-brand" href="index.jsp">Company Name</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle
                    navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                </ul><span class="navbar-text actions" style="margin-right: 14px;"> <a
                        class="btn btn-light action-button" role="button" href="index.jsp"
                        style="background: #359ae2;border-color: #359ae2;border-radius: 20px;color: rgba(255,255,255,0.9);">Home</a></span><span class="navbar-text actions" style="margin-right: 0px;"> <a class="btn btn-light action-button"
                        role="button" href="contact.jsp"
                        style="color: rgb(0,0,0);border-radius: 20px;background: rgb(255,255,255);border: 2px solid #359ae2;margin: 0;margin-right: 0px;">Contact
                        Us</a></span>
            </div>
        </div>
    </nav>
    <!-- End: Navigation with Button -->
    <div class="container" style="border-width: 135px;">
        <div class="card shadow-lg o-hidden border-0 my-5" style="border-width: 112px;">
            <div class="card-body p-0" style="border-width: 81px;">
                <div class="row">
                    <div class="col-lg-7" style="border-width: 109px;">
                        <div class="p-5" style="border-width: 57px;">
                            <div class="text-center" style="border-width: 59px;">
                                <h4 class="text-dark mb-4">Create an Account!</h4>
                            </div>
                            <form class="user" action="../SignUp" method="post" >
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="text" id="exampleFirstName" placeholder="First Name" name="first_name"></div>
                                    <div class="col-sm-6"><input class="form-control form-control-user" type="text" id="exampleFirstName" placeholder="Last Name" name="last_name"></div>
                                </div>
                                <div class="mb-3"><input class="form-control form-control-user" type="email" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Email Address" name="email"></div>
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="password" id="examplePasswordInput" placeholder="Password" name="password"></div>
                                    <div class="col-sm-6"><input class="form-control form-control-user" type="password" id="exampleRepeatPasswordInput" placeholder="Repeat Password" name="password_repeat"></div>
                                </div><button class="btn btn-primary d-block btn-user w-100" type="submit" style="color: var(--bs-body-bg);background: #359ae2;border-color: #359ae2;"><a  href="Verify.jsp" style="text-decoration:none; color:white">Register
                                    Account</button>
                                <hr>
                                <hr>
                            </form>
                            <div class="text-center"></div>
                            <div class="text-center"><a class="small" href="signin.jsp">Already have an account?
                                    Login!</a></div>
                        </div>
                    </div>
                    <div class="col-lg-5 d-none d-lg-flex">
                        <div class="flex-grow-1 bg-register-image" style="background: url(&quot;../css/signup_assets/img/hello.svg?h=16522e3cb12ac0dd75f76d37416b5125&quot;) center / contain no-repeat;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../css/signup_assets/js/script.min.js?h=4d952d21517087db850f0bbc41a815ca"></script>
</body>

</html>