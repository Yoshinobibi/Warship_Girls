<%--
  Created by IntelliJ IDEA.
  User: 95
  Date: 2016/3/31
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>home</title>
    <link  href="<%=path%>/webpage/plug-in/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="<%=path%>/webpage/plug-in/jquery/jquery-1.12.2.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/jquery/jquery.validate.min.js"></script>
    <style type="text/css">
        body {  padding-top: 40px;  }
    </style>
</head>
<body>
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand brand-white scrolled" href="/">Warship Girls</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class>
                    <a href="#">Home</a>
                </li>
                <li class>
                    <a href="##">Home2</a>
                </li>
                <li class>
                    <a href="###">Home3</a>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <a class="btn btn-primary u-2 signin" href="loginController.do?go_login">Sign In</a>
                <a class="btn btn-primary u-1 signup" href="userController.do?go_register">Sign Up</a>
            </form>
        </div>
    </div>
</div>
</body>
</html>
