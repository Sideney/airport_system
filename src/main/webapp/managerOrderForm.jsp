<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员查询</title>
</head>
<style>
    .welcomename{
        font-size: 16px;
        color: #ffffff;
    }
</style>
<body background="background1.png">
<div style="text-align: right">
    <table align="right">
        <tr>
            <td class="welcomename">欢迎<%=session.getAttribute("AdminId")%>&nbsp;</td>
            <td class="welcomename"><a href="cancelAdmin.jsp">注销</a></td>
        </tr>

    </table>
</div>
</br>
</br>
</br>
</br>
</br>
<div>
    <table align="center" style="background:rgba(255,255,255,0.9)">

        <c:forEach items="${orderForm}" var="orderForm" >
            <tr>
                <td>订单号</td>
                <td>${orderForm.OId}</td>
            </tr>
            <tr>
                <td>身份证号</td>
                <td>${orderForm.crId}</td>
            </tr>
            <tr>
                <td>订单价格</td>
                <td>${orderForm.oprice}</td>
            </tr>
            <tr>
                <td>电话号码</td>
                <td>${orderForm.phone}</td>
            </tr>
            <tr>
                <td>下单时间</td>
                <td>${orderForm.otime}</td>
            </tr>
            <tr>
                <td>机票号</td>
                <td>${orderForm.TId}</td>
            </tr>
            <tr>
                <td>---------------------------------------------------------</td>
                <td>---------------------------------------
        </c:forEach>
    </table>
</div>

</body>
</html>
