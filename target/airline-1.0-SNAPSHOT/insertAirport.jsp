
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>插入一个机场信息</title>
    <link rel="stylesheet" href="layui-v2.6.8/layui/css/layui.css">
</head>
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
<%
    if(session.getAttribute("AdminId")==null)
        response.sendRedirect("loginLoss.jsp");

%>
<body background="background1.png">
<c:if test="${flag==true}">
  <script>
      alert("不合法的城市名或机场名");
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
    <h3>插入一个机场信息</h3>
    <form  action="${pageContext.request.contextPath}/insertAirport.do" method="post">
        <table align="center">
            <tr>
                <td><p>输入机场名字</p></td>
                <td><input type="text" name="apName" class="layui-input" ></td>
            </tr>
            <tr>
                <td><p>输入城市Id</p></td>
                <td><input type="text" name="cId" class="layui-input"></td>
            </tr>
            <tr>
                <td colspan="2" >
                    <input class="layui-btn layui-btn-normal layui-btn-radius" type="submit" value="提交" >
                    <input class="layui-btn layui-btn-normal layui-btn-radius" type="reset" value="重置">
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
