<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>warship</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, max-scale=1.0, user-scalable=no">
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
<div>
    <form>
        <input type="text" name="name" id="name">
        <input type="text" name="type" id="type">
        <input type="button" value="submit" onclick="sub()">
    </form>
    <input type="button" value="show" onclick="show()">
    <ul id="list"></ul>
</div>

<input type="hidden" id="session" value="<%=session.getAttribute("name")%>">
<script type="text/javascript">
    function show(){
        $.ajax({
                type:"get",
                url: "warshipController.do?do_show",
                dataType: "json",
                success: function(data) {
                    $.each(data, function(i, item) {
                        $("#list").append('<li>' + item.name + '</li>'+'<li>' + item.type + '</li>')
                    });
                }
        })
    }
    function sub() {
        var name = $('#name').val().trim();
        var type = $('#type').val().trim();
        $.ajax({
            type:"post",
            url: "warshipController.do?do_add",
            data:{
                name:name,
                type:type
            },
            dataType: "json",
            success: function(data) {
                alert(data.message);
            }
        })
    }
</script>


</body>
</html>
