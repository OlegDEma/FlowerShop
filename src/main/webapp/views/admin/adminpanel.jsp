<%--
  Created by IntelliJ IDEA.
  User: Dema
  Date: 04.04.2017
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
    <meta charset="utf-8">
    <title>Locatielezen Administrator page</title>
    <link rel="stylesheet" href="normalize.css" charset="utf-8" />
    <link rel="stylesheet" href="admin--test.css" charset="utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <style>
        *,
        *::before,
        *::after {
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html,
        body {
            min-height: 100%;
            height: 100%;
            width: 100%;
            position: relative;

            font-size: 16px;
            font-family: sans-serif;
            background: rgba(0,0,0,.1);
        }

        ul {
            list-style-type: none;
        }

        i {
            width: 16px;
        }

        /*
        ############### ANIMATION #################
        */

        .admin__sidepanel ul li {
            transition: background .3s ease-in-out;
        }

        /*
        ############### FLEX #################
        */

        .flex,
        .flex--center,
        .admin__sidepanel ul li {
            display: flex;
            display: -webkit-flex;
        }

        .flex--center, .admin__sidepanel ul li {
            align-items: center;
            -webkit-align-items: center;
        }

        /*
        ################ STATUSBAR ##############
        */

        .admin__statusbar {
            position: fixed;
            top: 0;
            left: 0;
            z-index: 999;
            width: 100%;
            height: 35px;
            padding: 0 25px;
            background: rgb(60, 55, 53);
        }

        .admin__statusbar span {
            font-weight: lighter;
            color: lightgrey;
        }

        .admin__statusbar span i {
            margin-right: 1em;
        }

        .admin__statusbar #username {
            margin-left: auto;
        }

        /*
        ##################### SIDEPANEL ################
        */

        .admin__sidepanel {
            position: fixed;
            top: 35px;
            left: 0;
            z-index: 999;
            width: 200px;
            height: 100%;
            padding: 25px 0;
            background: rgb(60, 55, 53);
        }

        .admin__sidepanel ul li {
            width: 100%;
            height: 70px;
            padding-left: 25px;
            font-size: 1em;
            font-weight: lighter;
            color: lightgrey;
        }

        .admin__sidepanel ul li:hover {
            background: #666;
            cursor: pointer;
        }

        .admin__sidepanel ul li i {
            margin-right: 1em;
        }

        /*
        ##################### MAIN ################
        */

        .admin__main {
            position: absolute;
            top: 35px;
            left: 150px;
            width: 90%;
            height: 95%;
            padding: 0;
            padding-left: 30px;

            /*background: white;*/
            /*box-shadow: 0 2px 1px rgba(0,0,0,.1);*/
            /*text-align: center;*/
        }

        /*.admin__main h1 {*/
            /*font-weight: lighter;*/
            /*font-size: 3em;*/
        /*}*/
        .admin__main input {
            width: 100px;
            height: 25px;

        }

        textarea {
            resize: none;
        }
        .form-label {
            font-size: 12px;
            color: #5e9bfc;
            margin: 0;
            display: block;
            opacity: 1;
            -webkit-transition: .333s ease top, .333s ease opacity;
            transition: .333s ease top, .333s ease opacity;
        }
        .form-control {
            margin-bottom: 0px;
            border-radius: 0;
            border-color: #ccc;
            border-width: 0 0 2px 0;
            border-style: none none solid none;
            box-shadow: none;
        }
        .form-control:focus {
            box-shadow: none;
            border-color: #5e9bfc;
        }
        .js-hide-label {
            opacity: 0;
        }
        .js-unhighlight-label {
            color: #999
        }
        .btn-start-order {
            background: 0 0 #ffffff;
            border: 1px solid #2f323a;
            border-radius: 3px;
            color: #2f323a;
            font-family: "Raleway", sans-serif;
            font-size: 16px;
            line-height: inherit;
            margin: 0px 0;
            /*padding: 10px 50px;*/
            text-transform: uppercase;
            transition: all 0.25s ease 0s;
        }
        .btn-start-order:hover,.btn-start-order:active, .btn-start-order:focus {
            border-color: #5e9bfc;
            color: #5e9bfc;
        }

        .formProd{
            margin-left: 40px;
            width: 1000px;
        }

        .inBlock li {
            display: inline-block;
            align-items: baseline;
        }
/*// TTAAABBBLLEEEEEE*/

        h1{
            font-size: 30px;
            color: #fff;
            text-transform: uppercase;
            font-weight: 300;
            text-align: center;
            margin-bottom: 15px;
        }
        table{
            width:100%;
            table-layout: fixed;
        }
        .tbl-header{
            background-color: rgba(255,255,255,0.3);
        }
        .tbl-content{
            height:300px;
            overflow-x:auto;
            margin-top: 0px;
            border: 1px solid rgba(255,255,255,0.3);
        }
        th{
            padding: 20px 15px;
            text-align: left;
            font-weight: 500;
            font-size: 12px;
            color: #fff;
            text-transform: uppercase;
        }
        td{
            padding: 15px;
            text-align: left;
            vertical-align:middle;
            font-weight: 300;
            font-size: 12px;
            color: #fff;
            border-bottom: solid 1px rgba(255,255,255,0.1);
        }


        /* demo styles */

        @import url(http://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
        body{
            background: -webkit-linear-gradient(left, #25c481, #25b7c4);
            background: linear-gradient(to right, #25c481, #25b7c4);
            font-family: 'Roboto', sans-serif;
        }
        section{
            margin: 30px;
        }


        /* follow me template */
        .made-with-love {
            margin-top: 40px;
            padding: 10px;
            clear: left;
            text-align: center;
            font-size: 10px;
            font-family: arial;
            color: #fff;
        }
        .made-with-love i {
            font-style: normal;
            color: #F50057;
            font-size: 14px;
            position: relative;
            top: 2px;
        }
        .made-with-love a {
            color: #fff;
            text-decoration: none;
        }
        .made-with-love a:hover {
            text-decoration: underline;
        }


        /* for custom scrollbar for webkit browser*/

        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        }
        ::-webkit-scrollbar-thumb {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        }
        /*//Button*/
        .btnn {
            display: inline-block;
            padding: 5px 6px;
            color: white;
            text-decoration: none;
            background: red;
            border-radius: 50%;
        }
    </style>
</head>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript">



</script>

<body class="admin">

<header class="admin__statusbar flex--center">
    <span class="home"><i class="fa fa-home"></i><a href="/home">Home</a></span>
    <span id="username"><i class="fa fa-user"></i>Tycho Atsma</span>
</header>

<nav class="admin__sidepanel">
    <ul>
        <li onclick="menu('createProduct')">
            <i class="fa fa-file-text-o"></i>Create Product
        </li>
        <li onclick="menu('modifyProduct')">
            <i class="fa fa-pencil-square-o"></i>Modify Product
        </li>
        <li onclick="menu('createBrand')">
            <i class="fa fa-times-circle-o"></i>Brand
        </li>
        <li onclick="menu('createModel')">
            <i class="fa fa-times-circle-o"></i>Model
        </li>
        <li onclick="menu('createManager')">
            <i class="fa fa-times-circle-o"></i>Manager
        </li>
        <li onclick="menu('createCategory')">
            <i class="fa fa-times-circle-o"></i>Category
        </li>
        <li onclick="menu('createSubcategory')">
            <i class="fa fa-times-circle-o"></i>Subcategory
        </li>
        <li onclick="menu('createDelivery')">
            <i class="fa fa-times-circle-o"></i>Delivery
        </li>
        <li onclick="menu('Sale')">
            <i class="fa fa-times-circle-o"></i>Sale
        </li>
        <li onclick="menu('User')">
            <i class="fa fa-times-circle-o"></i>User
        </li>
        <li onclick="lox()">
            <i class="fa fa-times-circle-o"></i>lox
        </li>
    </ul>
</nav>

<main class="admin__main">
    <div id="menu1">
        <%--<div class="col-md-3">--%>
            <div class="formProd" >
                <form:form modelAttribute="product" id="contact-form" class="form" action="addNewProduct" method="get" role="form">
                    <ol class="inBlock">
                        <li>
                    <div class="form-group">
                        <label class="form-label" for="name">Name</label>
                        <form:input  path="name" type="text" class="form-control" id="name" name="name" placeholder="Your name" tabindex="1"  />
                    </div>
                        </li>
                        <li>
                        <div class="form-group">
                        <label class="form-label" for="email">Price</label>
                        <form:input path="price"  class="form-control" id="email" name="email" placeholder="Price" tabindex="2"  />
                    </div>
                        </li>
                        <li>
                    <div class="form-group">
                        <label class="form-label" for="subject">Quarantee</label>
                        <form:input path="guarantee"  class="form-control" id="subject" name="subject" placeholder="guarantee" tabindex="3"/>
                    </div>
                        </li>
                        <li>
                    <div class="form-group">
                    <label class="form-label" for="subject">Brand</label>
                    <select name="brand" style=" width: 100px; height:20px"  >
                        <c:forEach var="brand" items="${brands}">
                            <option value="${brand.id}">${brand.name}</option>
                        </c:forEach>
                    </select>
                </div>
                        </li>
                        <li>
                    <div class="form-group">
                        <label class="form-label" for="subject">Category</label>
                        <select name="category" style=" width: 100px; height:20px"  >
                            <c:forEach var="category" items="${categorys}">
                                <option value="${category.id}">${category.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                        </li>
                        <li>
                    <div class="form-group">
                        <label class="form-label" for="subject">Manager</label>
                        <select name="man" style=" width: 100px; height:20px"  >
                            <c:forEach var="man" items="${managers}">
                                <option value="${man.id}">${man.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                        </li>
                        <li>
                    <div class="form-group">
                        <label class="form-label" for="subject">Model</label>
                        <select name="model" style=" width: 100px; height:20px"  >
                            <c:forEach var="model" items="${models}">
                                <option value="${model.id}">${model.nameOfModel}</option>
                            </c:forEach>
                        </select>
                    </div>
                        </li>
                        <li>
                    <div >
                        <button type="submit" class="btn btn-start-order">Send Message</button>
                    </div>
                        </li>
                    </ol>
                </form:form>
            </div>
        <%--</div>--%>

            <section class="table">
                <!--for demo wrap-->
                <h1>Fixed Table header</h1>
                <div class="tbl-header">
                    <table cellpadding="0" cellspacing="0" border="0">
                        <thead>
                        <tr>
                            <th>Name</th>
                            <th>Model</th>
                            <th>Price</th>
                            <th>Category</th>
                            <th>Brand</th>
                        </tr>
                        </thead>
                    </table>
                </div>
                <div class="tbl-content">
                    <table cellpadding="0" cellspacing="0" border="0">
                        <tbody>
                        <c:forEach var="product" items="${products}">
                            <tr>
                                <td>${product.name}</td>
                                <td>${product.model.nameOfModel}</td>
                                <td>${product.price}</td>
                                <td>${product.category.name}</td>
                                <td>${product.brand.name}                    <a class="btnn" href="deleteProduct/${product.id}" >Delete product</a></td>
                            </tr>
                        </c:forEach>


                        </tbody>
                    </table>
                </div>
            </section>

    </div>


    <div id="menu2" style="display:none;">
        <%--<div class="col-md-3">--%>


        <section class="table">
            <!--for demo wrap-->
            <h1 id="qwe">Fixed Table header</h1>
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Model</th>
                        <th>Price</th>
                        <th>Category</th>
                        <th>Brand</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td>${product.name}</td>
                            <td>${product.model.nameOfModel}</td>
                            <td>${product.price}</td>
                            <td>${product.category.name}</td>
                            <td>${product.brand.name}                    <a class="btnn" onclick="change(${product.id})" >Modify</a> <a class="btnn" onclick="photo(${product.id})" >Photo</a></td>
                        </tr>
                    </c:forEach>


                    </tbody>
                </table>
            </div>
        </section>
            <div name="changeform" id="" style="margin-left: 50px; display: none;">
            <form:form action="" method="get" id="form">
                <input id="changeName" name="value" type="text" placeholder="Name">
                <select id="changeBrand" name="brand" style=" width: 100px; height:20px; display:none"  >
                    <c:forEach var="brand" items="${brands}">
                        <option value="${brand.id}">${brand.name}</option>
                    </c:forEach>
                </select>
                <select style="width: 100px; height: 25px;" id="change" name="whatChange">
                    <option onclick="show()" value="name">name</option>
                    <option onclick="show()" value="price">price</option>
                    <option onclick="brand()" value="brand">brand</option>
                </select>
                <input style="height: 40px" type="submit" value="change">

            </form:form>
            </div>
            <div name="photo" id="" style="margin-left: 50px; display: none;">
                <form:form action="./saveImageForProduct?${_csrf.parameterName}=${_csrf.token}"
                           method="post" enctype="multipart/form-data" id="photo">
                    <input type="text" name="id" value="${flower.id}" >
                    <input type="file" name="image">
                    <button>save image</button>
                </form:form>
            <%--<form:form action="" method="post" id="photo" enctype="multipart/form-data">--%>
                <%--<input name="photo" type="file">--%>
                <%--<input type="hidden" name="id" value="">--%>

                <%--<input style="height: 40px" type="submit" value="change">--%>

            <%--</form:form>--%>
        </div>

    </div>

    <div id="menu3" style="display: none">
        <%--<div class="col-md-3">--%>
        <div class="formProd" >
            <form:form modelAttribute="brand" id="contact-form" class="form" action="addBrand" method="post" role="form">
                <ol class="inBlock">
                    <li>


                            <form:input  path="name" type="text" class="form-control" id="name"  placeholder="name" />

                    </li>
                    <li>

                            <button style="background: silver; height: 25px; width: 100px; text-align: center;" type="submit" >Send</button>

                    </li>
                </ol>
            </form:form>
        </div>
        <%--</div>--%>

        <section class="table">
            <!--for demo wrap-->
            <h1>Fixed Table header</h1>
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                    <tr>
                        <th>Name</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                    <c:forEach var="brand" items="${brands}">
                        <tr>
                            <td>${brand.name}</td>
                            <td> <a class="btnn" href="deleteBrand/${brand.id}" >Delete brand</a></td>
                            <td>  <a class="btnn" onclick="changeBrand(${brand.id})" >Modify</a></td>

                        </tr>
                    </c:forEach>


                    </tbody>
                </table>

            </div>
        </section>
            <div name="modifyBrand"  style="margin-left: 50px; display: none;">
                <form:form action="" method="get" id="formBrand">
                    <input id="changeName" name="name" type="text" placeholder="Name">
                    <input style="height: 40px" type="submit" value="change">
                </form:form>
            </div>

    </div>

    <div id="menu4" style="display: none">
        <%--<div class="col-md-3">--%>
        <div class="formProd" >
            <form:form modelAttribute="model" id="contact-form" class="form" action="addNewModel" enctype="multipart/form-data" method="get" role="form">
                <ol class="inBlock">
                    <li>


                        <form:input  path="nameOfModel" type="text" class="form-control" id="name"  placeholder="nameOfModel" />

                    </li>
                    <li>

                        <button style="background: silver; height: 25px; width: 100px; text-align: center;" type="submit" >Send</button>

                    </li>
                </ol>
            </form:form>
        </div>
        <%--</div>--%>

        <section class="table">
            <!--for demo wrap-->
            <h1>Fixed Table header</h1>
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                    <tr>
                        <th>Name</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                    <c:forEach var="model" items="${models}">
                        <tr>
                        <td>${model.nameOfModel}</td>
                        <td> <a class="btnn" href="deleteModel/${model.id}" >Delete brand</a></td>
                        <td>  <a class="btnn" onclick="changeModel(${model.id})" >Modify</a></td>

                    </tr>
                    </c:forEach>


                    </tbody>
                </table>

            </div>
        </section>
        <div name="modifyModel"  style="margin-left: 50px; display: none;">
            <form:form action="" method="get" id="formModel">
                <input id="changeName" name="name" type="text" placeholder="Name">
                <input style="height: 40px" type="submit" value="change">
            </form:form>
        </div>

    </div>

    <div id="menu5" style="display: none">
        <%--<div class="col-md-3">--%>
        <div class="formProd" >
            <form:form modelAttribute="manager" id="contact-form" class="form" action="addNewManager" enctype="multipart/form-data" method="get" role="form">
                <ol class="inBlock">
                    <li>
                        <form:input  path="name" type="text" class="form-control" id="name"  placeholder="name" />

                    </li>
                    <li>
                        <form:input  path="surname" type="text" class="form-control" id="name"  placeholder="surname" />

                    </li>
                    <li>
                        <form:input  path="patronymic" type="text" class="form-control" id="name"  placeholder="patronymic" />

                    </li>
                    <li>
                        <form:input  path="phone"  class="form-control" id="name"  placeholder="phone" />

                    </li>
                    <li>
                        <form:input  path="mail" type="email"  class="form-control" id="name"  placeholder="mail" />

                    </li>
                    <li>
                        <form:input  path="city" type="text"  class="form-control" id="name"  placeholder="city" />

                    </li>
                    <li>
                        <form:input  path="firm" type="text"  class="form-control" id="name"  placeholder="firm" />

                    </li>
                    <li>
                        <form:input  path="storage" type="text"  class="form-control" id="name"  placeholder="storage" />

                    </li>
                    <li>

                        <button style="background: silver; height: 25px; width: 100px; text-align: center;" type="submit" >Send</button>

                    </li>
                </ol>
            </form:form>
        </div>
        <%--</div>--%>

        <section class="table">
            <!--for demo wrap-->
            <h1>Fixed Table header</h1>
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Surname</th>
                        <th>phone</th>
                        <th>city</th>
                        <th>Mail</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                    <c:forEach var="manager" items="${managers}">
                        <tr>
                            <td>${manager.name}</td>
                            <td>${manager.surname}</td>
                            <td>${manager.phone}</td>
                            <td>${manager.mail}</td>

                            <td>${manager.mail} <a class="btnn" href="deleteManager/${manager.id}" >Delete Manager</a>
                             <a class="btnn" onclick="changeManager(${manager.id})" >Modify</a></td>

                        </tr>
                    </c:forEach>


                    </tbody>
                </table>

            </div>
        </section>
        <div name="modifyManager"  style="margin-left: 50px; display: none;">
            <form:form action="" method="get" id="formManager">
                <input id="changeName" name="name" type="text" placeholder="Name">
                <input style="height: 40px" type="submit" value="change">
            </form:form>
        </div>

    </div>

    <div id="menu6" style="display: none">
        <%--<div class="col-md-3">--%>
        <div class="formProd" >
            <form:form modelAttribute="category" id="contact-form" class="form" action="addCategory" enctype="multipart/form-data" method="get" role="form">
                <ol class="inBlock">
                    <li>


                        <form:input  path="name" type="text" class="form-control" id="name"  placeholder="name" />

                    </li>

                    <li>

                        <button style="background: silver; height: 25px; width: 100px; text-align: center;" type="submit" >Send</button>

                    </li>
                </ol>
            </form:form>
        </div>
        <%--</div>--%>

        <section class="table">
            <!--for demo wrap-->
            <h1>Fixed Table header</h1>
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                    <tr>
                        <th>Name</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                    <c:forEach var="category" items="${categorys}">
                        <tr>
                            <td>${category.name}</td>
                            <td> <a class="btnn" href="deleteCategory/${category.id}" >Delete brand</a></td>
                            <td>  <a class="btnn" onclick="changeCategory(${category.id})" >Modify</a></td>

                        </tr>
                    </c:forEach>


                    </tbody>
                </table>

            </div>
        </section>
        <div name="formCategory"  style="margin-left: 50px; display: none;">
            <form:form action="" method="get" id="formCategory">
                <input id="changeName" name="name" type="text" placeholder="Name">
                <input style="height: 40px" type="submit" value="change">
            </form:form>
        </div>

    </div>

    <div id="menu7" style="display: none">
        <%--<div class="col-md-3">--%>
        <div class="formProd" >
            <form:form modelAttribute="subcategory" id="contact-form" class="form" action="addNewSubcategory" enctype="multipart/form-data" method="get" role="form">
                <ol class="inBlock">
                    <li>


                        <form:input  path="name" type="text" class="form-control" id="name"  placeholder="nameOfModel" />

                    </li>
                    <li>

                        <button style="background: silver; height: 25px; width: 100px; text-align: center;" type="submit" >Send</button>

                    </li>
                </ol>
            </form:form>
        </div>
        <%--</div>--%>

        <section class="table">
            <!--for demo wrap-->
            <h1>Fixed Table header</h1>
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                    <tr>
                        <th>Name</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                    <c:forEach var="subcategory" items="${subcategorys}">
                        <tr>
                            <td>${subcategory.name}</td>
                            <td> <a class="btnn" href="deleteSubcategory/${subcategory.id}" >Delete brand</a></td>
                            <td>  <a class="btnn" onclick="changeSubategory(${subcategory.id})" >Modify</a></td>

                        </tr>
                    </c:forEach>


                    </tbody>
                </table>

            </div>
        </section>
        <div name="modifySubcategory"  style="margin-left: 50px; display: none;">
            <form:form action="" method="get" id="formSubcategory">
                <input id="changeName" name="name" type="text" placeholder="Name">
                <input style="height: 40px" type="submit" value="change">
            </form:form>
        </div>

    </div>

    <div id="menu8" style="display: none">
        <%--<div class="col-md-3">--%>
        <div class="formProd" >
            <form:form modelAttribute="delivery" id="contact-form" class="form" action="addNewDelivery" enctype="multipart/form-data" method="get" role="form">
                <ol class="inBlock">
                    <li>


                        <form:input  path="firmOfDelivery" type="text" class="form-control" id="name"  placeholder="Firm" />

                    </li>
                    <li>


                    <form:input  path="wayOfDelivery" type="text" class="form-control" id="name"  placeholder="Way" />

                </li>
                    <li>

                        <button style="background: silver; height: 25px; width: 100px; text-align: center;" type="submit" >Send</button>

                    </li>
                </ol>
            </form:form>
        </div>
        <%--</div>--%>

        <section class="table">
            <!--for demo wrap-->
            <h1>Fixed Table header</h1>
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                    <tr>
                        <th>Name</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                    <c:forEach var="delivery" items="${deliverys}">
                        <tr>
                            <td>${delivery.firmOfDelivery}</td>
                            <td>${delivery.wayOfDelivery}</td>
                            <td> <a class="btnn" href="deleteDelivery/${delivery.id}" >Delete brand</a></td>
                            <td>  <a class="btnn" onclick="changeDelivery(${delivery.id})" >Modify</a></td>

                        </tr>
                    </c:forEach>


                    </tbody>
                </table>

            </div>
        </section>
        <div name="modifyDelivery"  style="margin-left: 50px; display: none;">
            <form:form action="" method="get" id="modifyDelivery">
                <input id="changeName" name="name" type="text" placeholder="Name">
                <input style="height: 40px" type="submit" value="change">
            </form:form>
        </div>

    </div>

    <div id="menu9" style="display: none">
        <%--<div class="col-md-3">--%>
        <div class="formProd" >
            <form:form modelAttribute="model" id="contact-form" class="form" action="addNewModel" enctype="multipart/form-data" method="get" role="form">
                <ol class="inBlock">
                    <li>


                        <form:input  path="nameOfModel" type="text" class="form-control" id="name"  placeholder="nameOfModel" />

                    </li>
                    <li>

                        <button style="background: silver; height: 25px; width: 100px; text-align: center;" type="submit" >Send</button>

                    </li>
                </ol>
            </form:form>
        </div>
        <%--</div>--%>

        <section class="table">
            <!--for demo wrap-->
            <h1>Fixed Table header</h1>
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                    <tr>
                        <th>Name</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                    <c:forEach var="model" items="${models}">
                        <tr>
                            <td>${model.nameOfModel}</td>
                            <td> <a class="btnn" href="deleteModel/${model.id}" >Delete brand</a></td>
                            <td>  <a class="btnn" onclick="changeModel(${model.id})" >Modify</a></td>

                        </tr>
                    </c:forEach>


                    </tbody>
                </table>

            </div>
        </section>
        <div name="modifyModel"  style="margin-left: 50px; display: none;">
            <form:form action="" method="get" id="formModel">
                <input id="changeName" name="name" type="text" placeholder="Name">
                <input style="height: 40px" type="submit" value="change">
            </form:form>
        </div>

    </div>

    <div id="menu10" style="display: none">
        <%--<div class="col-md-3">--%>
        <%--<div class="formProd" >--%>
            <%--<form:form modelAttribute="user" id="contact-form" class="form" action="addNewModel" enctype="multipart/form-data" method="get" role="form">--%>
                <%--<ol class="inBlock">--%>
                    <%--<li>--%>


                        <%--<form:input  path="nameOfModel" type="text" class="form-control" id="name"  placeholder="nameOfModel" />--%>

                    <%--</li>--%>
                    <%--<li>--%>

                        <%--<button style="background: silver; height: 25px; width: 100px; text-align: center;" type="submit" >Send</button>--%>

                    <%--</li>--%>
                <%--</ol>--%>
            <%--</form:form>--%>
        <%--</div>--%>
        <%--</div>--%>
        <section class="table">
            <!--for demo wrap-->
            <h1>Fixed Table header</h1>
            <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                    <thead>
                    <tr>
                        <th>Name</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.name}</td>
                            <%--<td> <a class="btnn" href="deleteUser/${user.id}" >Delete brand</a></td>--%>
                            <%--<td>  <a class="btnn" onclick="" >Ban</a></td>--%>
                            <%--<td>  <a class="btnn" onclick="" >UnBan</a></td>--%>
                            <%--<td>  <a class="btnn" onclick="" >Set Admin</a></td>--%>
                            <%--<td>  <a class="btnn" onclick="" >Set User</a></td>--%>

                        </tr>
                    </c:forEach>


                    </tbody>
                </table>

            </div>
        </section>
        <div name="modifyModel"  style="margin-left: 50px; display: none;">
            <form:form action="" method="get" id="formModel">
                <input id="changeName" name="name" type="text" placeholder="Name">
                <input style="height: 40px" type="submit" value="change">
            </form:form>
        </div>

    </div>

</main>
<input  type="hidden" value="${whatToDo}" id="do">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

</body>
<script type="text/javascript" src="js/adminpanel.js"></script>
</html>
