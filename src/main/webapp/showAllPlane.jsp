<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>本机场所有飞机表</title>
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
            <td style="text-decoration:underline;color:#0066ff;font-size: 20px" width="100px">飞机Id</td>
            <td style="text-decoration:underline;color:#0066ff;font-size: 20px" width="100px">飞机名</td>
        </tr>
        <c:forEach items="${plane}" var="plane">
            <tr>
                <td style="text-decoration:underline;color:#0066ff;font-size: 20px;text-align: left"  width="100px">${plane.amId}</td>
                <td><a style="text-decoration:underline;color:#0066ff;font-size: 20px" href="${pageContext.request.contextPath}/findFlight.do?pId=${plane.amId}&pName=${plane.amName}"  width="100px">${plane.amName}</a></td>
            </tr>
        </c:forEach>
        <h1><a href="managerIndex.jsp">返回管理员界面</a></h1>
    </table>

</div>

</body>
</html>