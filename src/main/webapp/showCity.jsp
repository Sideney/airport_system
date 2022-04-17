<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>该机场所属城市</title>
</head>
<%
    if(session.getAttribute("AdminId")==null)
        response.sendRedirect("loginLoss.jsp");
%>
<style>
    p{
        color:#0066ff;
        font-size: 18px;
    }
    .td1 {
        color: #0066ff;
        width: 150px;
        font-size: 20px;
    }
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
<div>
    </br></br>
    </br>
    <table align="center" style="background: rgba(255,255,255,0.9)">
        <tr>
            <td class="td1">城市Id</td>
            <td class="td1">城市名</td>
        </tr>

            <tr>
                <td class="td1">${city.CId}</td>
                <td class="td1">${city.CName}</td>
            </tr>

        <h1><a href="managerIndex.jsp">返回管理员界面</a></h1>
    </table>


</div>

</body>
</html>