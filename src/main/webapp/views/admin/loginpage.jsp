<%--
  Created by IntelliJ IDEA.
  User: Dema
  Date: 03.04.2017
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
<div class="wrapper">
    <div class="container">
        <h1>Welcome</h1>

        <form:form modelAttribute="user" action="loginprocesing"  class="form" method="post">
            <input name="username"  type="text" placeholder="Username">
            <input name="password" type="password" placeholder="Password">
            <button type="submit" id="login-button">Login</button>
        </form:form>
    </div>

    <ul class="bg-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</div>
</body>
</html>
