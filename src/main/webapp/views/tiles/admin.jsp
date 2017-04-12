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
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" >

        <!-- Mega menu -->
        <link rel="stylesheet" type="text/css" href="css/megamenu.css">

        <!-- Theme Style -->
        <link rel="stylesheet" type="text/css" href="css/style.css">

        <!-- Colors -->
        <link rel="stylesheet" type="text/css" href="css/colors/color1.css" id="colors">


        <!-- Responsive Style -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">

        <!-- Favicon and touch icons  -->
        <link href="icon/apple-touch-icon-48-precomposed.png" rel="apple-touch-icon-precomposed" sizes="48x48">
        <link href="icon/apple-touch-icon-32-precomposed.png" rel="apple-touch-icon-precomposed">
        <link href="icon/favicon.png" rel="shortcut icon">

        <!--[if lt IE 9]>
        <script src="javascript/html5shiv.js"></script>
        <script src="javascript/respond.min.js"></script>
        <![endif]-->

    </head>
</head>

<body>
<div>
    <div class="container-fluid">
        <%--<!-- 	сюди jsp файл з ім'ям body -->--%>
        <tiles:insertAttribute name="body" />
    </div>

</div>
</body>
<!-- Javascript -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/imagesloaded.min.js"></script>
<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script type="text/javascript" src="js/parallax.js"></script>
<script type="text/javascript" src="js/jquery-waypoints.js"></script>
<script type="text/javascript" src="js/main.js"></script>

<!-- Revolution Slider -->
<script type="text/javascript" src="js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript">


</script>
</html>