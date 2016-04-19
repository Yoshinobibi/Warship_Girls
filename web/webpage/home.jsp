<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>home</title>
    <link href="<%=path%>/webpage/plug-in/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<%=path%>/webpage/plug-in/css/main.css" rel="stylesheet" type="text/css">
    <script src="<%=path%>/webpage/plug-in/jquery/jquery-1.12.2.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/jquery/jquery.validate.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/js/main.js"></script>
</head>
<body>
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Warship Girls</a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class>
                    <a href="warshipController.do?go_warship">Warship</a>
                </li>
                <li class>
                    <a href="#">Home2</a>
                </li>
                <li class>
                    <a href="#">Home3</a>
                </li>
            </ul>
            <form id="navi_form" class="navbar-right">
                <a class="btn btn-primary" href="loginController.do?go_login">Sign In</a>
                <a class="btn btn-primary" href="userController.do?go_register">Sign Up</a>
            </form>
        </div>
    </div>
</div>
<input type="hidden" id="session" value="<%=session.getAttribute("name")%>">
</body>
</html>
