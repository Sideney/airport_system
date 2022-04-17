<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎来到航班选座</title>
</head>
<style>
    .welcomename{
        font-size: 16px;
        color: #ffffff;
    }
</style>
<body background="background1.png">
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

<div>
    <table align="center" style="position:absolute;top:30%;left:37%;background:rgba(255,255,255,0.9)">

    <% int count=1;%>
    <c:forEach items="${seat}" var="seat" >
        <%
            if(count%4==1){
        %>
        <tr>

            <c:choose>
                <c:when test="${seat.status==true}">
                    <td style="text-align: left">${seat.SNum}</td>
                    <td><a style="text-align: right" href="managerTicket.jsp?sId=${seat.SId}&sNum=${seat.SNum}">
                        <img src="seatfalse.png" width="40" height="40">
                    </a></td>

                </c:when>
                <c:otherwise>
                    <td style="text-align: left">${seat.SNum}</td>
                    <td><img src="seattrue.png" width="40" height="40"></td>
                </c:otherwise>
            </c:choose>
            <%
                count++; }else if(count%4==2){
            %>

            <c:choose>
                <c:when test="${seat.status==true}">
                    <td><a style="text-align: right" href="managerTicket.jsp?sId=${seat.SId}&sNum=${seat.SNum}">
                        <img src="seatfalse.png" width="40" height="40">
                    </a></td>
                </c:when>
                <c:otherwise>
                    <td><img src="seattrue.png" width="40" height="40"></td>
                </c:otherwise>
            </c:choose>
                     <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
                     <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
            <%
                count++; }else if(count%4==3){
            %>

            <c:choose>
                <c:when test="${seat.status==true}">
                    <td style="text-align: left">${seat.SNum}</td>
                    <td><a style="text-align: right" href="managerTicket.jsp?sId=${seat.SId}&sNum=${seat.SNum}">
                        <img src="seatfalse.png" width="40" height="40">
                    </a></td>
                </c:when>
                <c:otherwise>
                    <td style="text-align:left">${seat.SNum}</td>
                    <td><img src="seattrue.png" width="40" height="40"></td>
                </c:otherwise>
            </c:choose>
            <%
                count++;}else if(count%4==0){
            %>
            <c:choose>
                <c:when test="${seat.status==true}">
                    <td><a style="text-align: right" href="managerTicket.jsp?sId=${seat.SId}&sNum=${seat.SNum}">
                        <img src="seatfalse.png" width="40" height="40">
                    </a></td>
                </c:when>
                <c:otherwise>
                    <td><img src="seattrue.png" width="40" height="40"></td>
                </c:otherwise>
            </c:choose>
            </tr>
        <% count++; }%>
    </c:forEach>

</table>
</div>

</body>
</html>
