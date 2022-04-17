<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的机票</title>
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
    <table align="center" style="position:absolute;top:15%;left:35%;background:rgba(255,255,255,0.9)">
        <c:forEach items="${ticket}" var="ticket" >
            <tr>
                <td>机票号</td>
                <td>${ticket.TId}</td>
            </tr>
            <tr>
                <td>登机时间</td>
                <td>${ticket.TTime }</td>
            </tr>
            <tr>
                <td>机票价格</td>
                <td>${ticket.tprice}</td>
            </tr>
            <tr>
                <td>餐食</td>
                <td>${ticket.TFood}</td>
            </tr>
            <tr>
                <td>执行航班号</td>
                <td>${ticket.ofId}</td>
            </tr>
            <tr>
                <td>座位号</td>
                <td>${ticket.SId}</td>
            </tr>
            <tr>
                <td>舱位号</td>
                <td>${ticket.cabinId}</td>
            </tr>
            <tr>
                <td>出发地</td>
                <td>${ticket.TCity1}</td>
            </tr>
            <tr>
                <td>目的地</td>
                <td>${ticket.TCity2}</td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/deleteTicket.do?tId=${ticket.TId}&sId=${ticket.SId}&asId=${ticket.cabinId}" methods="post">退票</a></td>
            </tr>
            <tr>
                <td>-------------------------------</td>
                <td>----------------------------------------</td>
            </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>
