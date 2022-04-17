·<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎来到订票查询系统</title>
</head>
<style type="text/css">
    .table1{
        border-style: hidden;
        font-size: 18px;
        color: #ffffff;
        font-family: 宋体;
        font-weight: bold;
        text-align: center;
    }
    .table2{
        border-style: hidden;
        font-size: 20px;
        color: #000000;
        font-family: 宋体;
        font-weight: bold;
        background: rgba(255, 255, 255, 1);
    }
    .welcomename{
        font-size: 16px;
        color: #ffffff;
    }

</style>
<body background="background1.png"　>

<%
    if(session.getAttribute("UserId")==null)
        response.sendRedirect("loginLoss.jsp");
%>

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
</br>
</br>
</br>
</br>

<div>
    <form action="${pageContext.request.contextPath}/findonFlight.do" method="post">

    <table border="0" cellspacing="0" align="center" class="table1">
        <tr>
            <td>出发城市</td>
            <td>到达城市</td>
            <td>出发时间</td>
        </tr>

        <tr>
            <td><input type="text" name="estimateCity" value="${City1}" }></td>
            <td><input type="text" name="arriveCity" value="${City2}"}></td>
            <td><input type="date" name="estimateTime" value="${Time}" }></td>
            <td><input type="submit" value="查询机票" }></td>
        </tr>
    </table>
</form>
</div>
</br>
</br>
</br>
</br>
<div>
    <form>
    <table border="0" cellspacing="0"  align="center" class="table2" style="background:rgba(255,255,255,0.9)">

        <tr>

            <td width="250px" align="center">航班</td>
            <td width="100px" align="center">起飞</td>
            <td  width="100px"></td>
            <td  width="100px" align="center">到达</td>
            <td  width="200px" align="center"></td>
        </tr>

        <c:forEach items="${onFlights}" var="onFlights" >
            <tr>
                <td align="center">${onFlights.FId}</td>
                <td align="center" style="color:sandybrown">${onFlights.ofEstimateTime1 }</td>
                <td align="center">-------></td>
                <td align="center"  style="color:sandybrown">${onFlights.ofEstimateTime2 }</td>
                <td align="center"><a href="${pageContext.request.contextPath}/findCabinById1.do?ofId=${onFlights.ofId}" methods="post">订票</a></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td align="center" style="font-size: 15px">${onFlights.ofAirLine1}</td>
                <td>&nbsp;</td>
                <td align="center" style="font-size: 15px">${onFlights.ofAirLine2}</td>
                <td>&nbsp;</td>
            </tr>
        </c:forEach>
    </table>
</form>
</div>

</body>
</html>