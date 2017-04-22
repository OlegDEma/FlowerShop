<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <head>
        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
        <title>Zoro - Multipurpose Template</title>
        <meta name='keywords' content='business, clean, twitter, bootstrap 3, responsive'>
        <meta name='description' content="Colores is a professional multipurpose template for any business, portfolio or blog website.">
        <meta name='author' content='#'>

        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <!-- Bootstrap  -->
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/css/bootstrap.css" >

        <!-- Woocommerce -->
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/css/woocommerce.css">

        <!-- Mega menu -->
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/css/megamenu.css">

        <!-- Theme Style -->
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/css/style.css">

        <!-- Colors -->
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/css/colors/color1.css" id="colors">


        <!-- Responsive Style -->
               <link rel="stylesheet" type="text/css" href="http://localhost:8080/css/responsive.css">

        <!-- Jquery UI -->
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/css/jquery-ui.min.css">

        <!-- Favicon and touch icons  -->
        <link href="http://localhost:8080/icon/apple-touch-icon-48-precomposed.png" rel="apple-touch-icon-precomposed" sizes="48x48">
        <link href="http://localhost:8080/icon/apple-touch-icon-32-precomposed.png" rel="apple-touch-icon-precomposed">
        <link href="http://localhost:8080/icon/favicon.png" rel="shortcut icon">
        <!-- Favicon and touch icons  -->
        <link href="http://localhost:8080/icon/apple-touch-icon-144-precomposed.png" rel="apple-touch-icon-precomposed" sizes="144x144">
        <link href="http://localhost:8080/icon/apple-touch-icon-114-precomposed.png" rel="apple-touch-icon-precomposed" sizes="114x114">
        <link href="http://localhost:8080/icon/apple-touch-icon-72-precomposed.png" rel="apple-touch-icon-precomposed" sizes="72x72">
        <link href="http://localhost:8080/icon/apple-touch-icon-57-precomposed.png" rel="apple-touch-icon-precomposed">
        <link href="http://localhost:8080/icon/favicon.png" rel="shortcut icon">

        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>

        <!--[if lt IE 9]>
        <script src="http://localhost:8080/javascript/html5shiv.js"></script>
        <script src="http://localhost:8080/javascript/respond.min.js"></script>
        <![endif]-->

    </head>
</head>

<body>
<div><div>
    <tiles:insertAttribute name="header"/>
</div>

    <div class="container-fluid">
        <%--<!-- 	сюди jsp файл з ім'ям body -->--%>
        <tiles:insertAttribute name="body" />
    </div>

</div>
</body>
<!-- Javascript -->
<script type="text/javascript" src="http://localhost:8080/js/adminpanel.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/jquery.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/jquery.easing.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/imagesloaded.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/jquery.cookie.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/parallax.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/jquery-waypoints.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/main.js"></script>


<!-- Revolution Slider -->
<script type="text/javascript" src="http://localhost:8080/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/js/slider.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript">

</script>
</html>