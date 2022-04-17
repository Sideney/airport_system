
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>插入执行航班</title>
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
        height:70% ;
        width:40%;
    }
    .welcomename{
        font-size: 16px;
        color: #ffffff;
    }
</style>

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
<div id="bgcolor1" class="layui-bg-gray">
    <br/>
    <h3>插入一个执行航班</h3>
    <%--String pfId, String pfTime, String pfEstimateTime1, String pfActualTime1, String pfGate, String pfAirTime, String fId, int apId1, int apId2--%>
    <form  action="${pageContext.request.contextPath}/insertonFlight.do" method="post">
        <table align="center">
            <tr>
                <td><p>输入执行航班号</p></td>
                <td><input type="text" name="pfId" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>输入航班号</p></td>
                <td><input type="text" name="fId" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>输入出发地机场Id</p></td>
                <td><input type="text" name="apId1" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>输入目的地机场Id</p></td>
                <td><input type="text" name="apId2" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>输入起飞日期</p></td>
<%--                <td><input type="text" name="pfTime" ></td>--%>
                <td><input type="date" name="pfTime" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>输入出发时间</p></td>
<%--                <td><input type="text" name="pfEstimateTime1" ></td>--%>
                <td><input type="time" name="pfEstimateTime1" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>输入到达时间</p></td>
                <td><input type="time" name="pfActualTime1" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>输入登机口</p></td>
                <td><input type="text" name="pfGate" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>输入登机时间</p></td>
                <td><input type="time" name="pfAirTime" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>出发机场名称</p></td>
                <td><input type="text" name="City1" class="layui-input"></td>
            </tr>
            <tr>
                <td><p>出发机场名称</p></td>
                <td><input type="text" name="City2" class="layui-input"></td>
            </tr>
            <tr>
                <td colspan="2" >
                    <input class="layui-btn layui-btn-normal layui-btn-radius" type="submit" value="提交">
                    <input class="layui-btn layui-btn-normal layui-btn-radius" type="reset" value="重置">
                </td>
            </tr>
        </table>
    </form></div>

</body>
</html>
