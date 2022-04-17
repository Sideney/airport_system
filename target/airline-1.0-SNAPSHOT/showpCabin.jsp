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
    if(session.getAttribute("UserId")==null)
        response.sendRedirect("loginLoss.jsp");
%>
<body background="background1.png">
<div style="text-align: right">
    <table align="right">
        <tr>
            <td class="welcomename">欢迎<%=session.getAttribute("Username")%>&nbsp;</td>
            <td class="welcomename"><a href="${pageContext.request.contextPath}/findOrderById.do?uIdentify=<%=session.getAttribute("UserId")%>" methods="post">我的订单&nbsp;</a></td>
            <td class="welcomename"><a href="${pageContext.request.contextPath}/findTicketById.do?uIdentify=<%=session.getAttribute("UserId")%>" methods="post">我的机票&nbsp;</a></td>
            <td class="welcomename"><a href="cancelUser.jsp">注销</a></td>
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
                <td class="chose" width="150px"><a href="${pageContext.request.contextPath}/findSeatById.do?ofId=${cabin.ofId}&sLevel=${cabin.clevel}&asPrice=${cabin.price}&cabinId=${cabin.cabinId}" methods="post">点击买票</a></td>
            </tr>
        </c:forEach>
        <h1><a href="managerIndex.jsp">返回管理员界面</a></h1>
    </table>

</div>

</body>
</html>
