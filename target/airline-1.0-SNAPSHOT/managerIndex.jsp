<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2021/6/28
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>欢迎来到航空系统管理系统</title>
    <link rel="stylesheet" href="layui-v2.6.8/layui/css/layui.css">
</head>
<%
    if(session.getAttribute("AdminId")==null)
        response.sendRedirect("loginLoss.jsp");
%>
<style type="text/css">
    p{
      font-size: 25px;
      color: #000000;
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
    .selecttd{
        font-size: 20px;
        color: #FFFFFF;
        font-family: 宋体;
        font-weight: bold;
        text-align: center;
    }

    #bgcolor1{
        background: rgba(255, 255, 255, 0.9);
        position:absolute;
        top:15%;
        left:30%;
        height:50% ;
        width:40%;
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
            <td class="welcomename"><a href="cancelAdmin.jsp">退出登录</a></td>
        </tr>

    </table>
</div>

<div id="bgcolor1" class="layui-bg-gray">
    <br/>
    <br/>

    <p>欢迎来到航班管理员系统</p>
    <br/>
    <form action="${pageContext.request.contextPath}/findOrder.do" method="post">
    <table align="center">
        <tr>
            <td style="text-decoration:underline;font-size:20px;font-family: 宋体;font-weight: bold;">查询执行航班本月内订票情况</td>
            <td><input type="text" name="fId" size="6"></td>
            <td><input type="submit" value="提交" class="layui-btn layui-btn-normal layui-btn-radius"></td>
        </tr>
    </table>
</form>
    <h3><a style="text-decoration:underline" href="${pageContext.request.contextPath}/findPlane.do">查看所有飞机信息</a></h3>
    <h3><a style="text-decoration:underline" href="${pageContext.request.contextPath}/findFlight.do">查看所有航班信息</a></h3>
    <h3><a style="text-decoration:underline" href="${pageContext.request.contextPath}/findAllonFlight.do">查看所有执飞航班信息</a></h3>
    <h3><a style="text-decoration:underline" href="insertPlane.jsp">插入一个飞机信息</a></h3>
    <h3><a style="text-decoration:underline" href="insertAirport.jsp">插入一个机场信息</a></h3>
    <h3><a style="text-decoration:underline" href="insertFlight.jsp">插入一个航班</a></h3>
    <h3><a style="text-decoration:underline" href="insertPerformFlight.jsp">插入执飞航班信息</a></h3>
</div>

</body>
</html>
