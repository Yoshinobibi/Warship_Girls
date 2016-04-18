<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/4/18
  Time: 13:36
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
    <title>warship</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, max-scale=1.0, user-scalable=no">
    <link  href="<%=path%>/webpage/plug-in/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="<%=path%>/webpage/plug-in/jquery/jquery-1.12.2.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=path%>/webpage/plug-in/jquery/jquery.validate.min.js"></script>
</head>
<body>
<input type="hidden" id="name" value="<%=session.getAttribute("name")%>">
<form action="warshipController.do?do_add" method="post">
    <input type="text" name="name">
    <input type="submit" value="submit">
</form>
<input type="button" value="show" onclick="show()">
<ul id="list"></ul>
<script type="text/javascript">
    function show(){
        $.ajax({
                type:"get",
                url: "warshipController.do?do_show",
                dataType: "json",
                success: function(data) {
                    $.each(data, function(i, item) {
                        $("#list").append('<li>' + item.name + '</li>')
                    });
                }
        })
    }
</script>


</body>
</html>
