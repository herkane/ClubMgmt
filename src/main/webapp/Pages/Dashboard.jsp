<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <title>Dashboard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/figma.css">
</head>

<body>
    <div class="wrapper d-flex align-items-stretch">
        <jsp:include page="sidebar.jsp">  
			<jsp:param name="f_name" value="${user.prenom }" />  
			<jsp:param name="l_name" value="${user.nom }" />  
		</jsp:include>  
        <!-- Page Content  -->
        <div id="content" class="p-4 p-md-5 pt-5">
            <div class=e110_3>
                <div class="e110_6"></div><span class="e110_7">Weekly new members</span><span class="e110_9">+106</span>
                <div class=e110_10>
                    <div class="e110_11"></div>
                    <div class="e110_12"></div>
                    <div class="e110_13"></div>
                    <div class="e110_14"></div>
                    <div class="e110_15"></div>
                    <div class="e110_16"></div>
                    <div class="e110_17"></div>
                    <div class="e110_18"></div>
                    <div class="e110_19"></div>
                    <div class="e110_20"></div>
                    <div class="e110_21"></div>
                    <div class="e110_22"></div>
                    <div class="e110_23"></div>
                    <div class="e110_24"></div>
                </div>
                <div class="e110_43"></div><span class="e110_44">New subscriptors</span><span class="e110_45">+31</span>
                <div class=e110_61>
                    <div class="e110_62"></div>
                    <div class="e110_63"></div>
                    <div class="e110_64"></div>
                    <div class="e110_65"></div>
                    <div class="e110_66"></div>
                    <div class="e110_67"></div>
                    <div class="e110_68"></div>
                    <div class="e110_69"></div>
                    <div class="e110_70"></div>
                    <div class="e110_71"></div>
                    <div class="e110_72"></div>
                    <div class="e110_73"></div>
                    <div class="e110_74"></div>
                    <div class="e110_75"></div>
                    <div class="e110_76"></div>
                    <div class="e110_77"></div>
                    <div class="e110_78"></div>
                    <div class="e110_79"></div>
                    <div class="e110_80"></div>
                    <div class="e110_81"></div>
                    <div class="e110_82"></div>
                    <div class="e110_83"></div>
                    <div class="e110_84"></div>
                    <div class="e110_85"></div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>