<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> </title>
</head>
<style>
    .welcomename{
        font-size: 16px;
        color: #ffffff;
    }
</style>
<%
    if(session.getAttribute("AdminId")==null)
        response.sendRedirect("loginLoss.jsp");
%>
<body background="background1.png">

<div style="text-align: right">
    <table align="right">
        <tr>
            <td class="welcomename">欢迎<%=session.getAttribute("AdminId")%>&nbsp;</td>
            <td class="welcomename"><a href="cancelAdmin.jsp">退出登录</a></td>
        </tr>
    </table>
</div>
<div>
    </br></br></br></br></br>
    <table align="center"  style="background: rgba(255,255,255,0.9)">
        <tr>
            <td style="text-decoration:underline;color:#0066ff;font-size: 20px" width="100px">舱座等级</td>
            <td style="text-decoration:underline;color:#0066ff;font-size: 20px" width="100px">价格</td>
            <td style="text-decoration:underline;color:#0066ff;font-size: 20px" width="100px">剩余票量</td>
        </tr>
        <c:forEach items="${cabin}" var="cabin">
            <tr>
                <td>${cabin.clevel}</td>
                <td>${cabin.price}</td>
                <td>${cabin.remainTicket}</td>
            </tr>
        </c:forEach>
        <h1><a href="managerIndex.jsp">返回管理员界面</a></h1>
    </table>

</div>

</body>
</html>
