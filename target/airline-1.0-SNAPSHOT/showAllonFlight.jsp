<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看所有执飞航班</title>
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
    </br></br></br></br>
    <table align="center"  style="background: rgba(255,255,255,0.9)">
        <tr>
            <td class="td1">出发时间</td>
            <td class="td1">出发地</td>
            <td class="td1">到达时间</td>
            <td class="td1">目的地</td>
            <td class="td1">登机口</td>
            <td class="td1">登机时间</td>
            <td></td>
            <td></td>
        </tr>
        <c:forEach items="${onflight}" var="onflight">
            <tr>
                <td class="td1">${onflight.ofActualTime1}</td>
                <td><a style="text-decoration:underline;color:#0066ff;font-size: 20px" href="${pageContext.request.contextPath}/findCityByapName.do?apName=${onflight.ofAirLine1}"  width="100px">${onflight.ofAirLine1}</a></td>
                <td class="td1">${onflight.ofActualTime2 }</td>
                <td><a style="text-decoration:underline;color:#0066ff;font-size: 20px" href="${pageContext.request.contextPath}/findCityByapName.do?apName=${onflight.ofAirLine2}"  width="100px">${onflight.ofAirLine2}</a></td>
                <td class="td1">${onflight.ofGate}</td>
                <td class="td1">${onflight.ofAirTime}</td>
                <td class="td1"><a style="text-decoration:none;color:#656565" href="${pageContext.request.contextPath}/findCabinById.do?ofId=${onflight.ofId}">查看舱位及其价格</a></td>
            </tr>
        </c:forEach>
        <h1><a href="managerIndex.jsp">返回管理员界面</a></h1>
    </table>

</div>

</body>
</html>