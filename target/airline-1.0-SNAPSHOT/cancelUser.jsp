
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注销成功</title>
</head>
<body>
<h1>注销成功，三秒之后跳转至登入界面</h1>
<%
    session.setAttribute("UserId",null);
    session.setAttribute("Username",null);
    response.sendRedirect("loginuserIndex.jsp");
%>
</body>
</html>
