
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>插入飞机</title>
    <link rel="stylesheet" href="layui-v2.6.8/layui/css/layui.css">
</head>
<%
    if(session.getAttribute("AdminId")==null)
        response.sendRedirect("loginLoss.jsp");
%>
<style type="text/css">
    p{
        font-size: 18px;
        color: #0066ff;
        font-family: 宋体;
        font-weight: bold;
        text-align: center;
    }
    h3{
        font-size: 20px;
        color: #000000;
        font-family: 宋体;
        font-weight: bold;
        text-align: center;
    }
    #bgcolor1{
        background: rgba(255, 255, 255, 0.9);
        position:absolute;
        top:15%;
        left:30%;
        height:30% ;
        width:40%;
    }
    .welcomename{
        font-size: 16px;
        color: #ffffff;
    }
</style>
<body background="background1.png">
<c:if test="${flag==true}">
    <script>
        alert("插入错误");
    </script>
</c:if>
<div style="text-align: right">
    <table align="right">
        <tr>
            <td class="welcomename">欢迎<%=session.getAttribute("AdminId")%>&nbsp;</td>
            <td class="welcomename"><a href="cancelAdmin.jsp">注销</a></td>
        </tr>

    </table>
</div>
<div id="bgcolor1">
    <br/>
    <h3>插入一个飞机</h3>
    <form  action="${pageContext.request.contextPath}/insertPlane.do" method="post">
        <table  align="center">
            <tr>
                <td><p>输入飞机名</p></td>
                <td><input type="text" name="pName" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>输入飞机最大座位数</p></td>
                <td><input type="text" name="pSeat" class="layui-input"></td>
            </tr>
            <tr>
                <td colspan="2" >
                    <input class="layui-btn layui-btn-normal layui-btn-radius" type="submit" value="提交">
                    <input class="layui-btn layui-btn-normal layui-btn-radius" type="reset" value="重置">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
