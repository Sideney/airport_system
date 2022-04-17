<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2021/6/29
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>提交订单</title>
    <link rel="stylesheet" href="layui-v2.6.8/layui/css/layui.css">
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
    String []Meal=request.getParameterValues("meal");
    String Meall="米饭";
    if(Meal!=null){
        for (int i=0; i<Meal.length; i++){
            Meall+="+"+Meal[i];
        }
    }

%>
<script type="text/javascript">
    function meal() {
        location.href = "choosemeal.jsp?sId=<%=request.getParameter("sId")%>&sNum=<%=request.getParameter("sNum")%>";
    }
</script>
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
    <form action="${pageContext.request.contextPath}/insertTicket.do" method="post">
        <table align="center" style="position:absolute;top:30%;left:37%;background:rgba(255,255,255,0.9)">
            <tr>
                <td>您的执行航班号</td>
                <td>${sessionScope.ticketpfId}</td>
                <td><input type="hidden" name="pfId" value="${sessionScope.ticketpfId}" ></td>
            </tr>
            <tr>
                <td>您的舱位等级</td>
                <td>${sessionScope.ticketsLevel}</td>
            </tr>
            <tr>
                <td>您的舱位价格</td>
                <td>${sessionScope.tickettPrice}</td>
                <td><input type="hidden" name="tPrice" value="${sessionScope.tickettPrice}" ></td>
            </tr>
            <tr>
                <td>您的座位号</td>
                <td><%=request.getParameter("sNum")%></td>
            </tr>
            <tr>
                <td>请输入登机身份证</td>
                <td><input type="text" name="uIdentify" value="${sessionScope.UserId}" class="layui-input"></td>
            </tr>
            <tr>
                <td>请输入电话号码</td>
                <td><input type="text" name="oPhone" class="layui-input"></td>
            </tr>
            <tr>
                <td>请输入订单号码</td>
                <td><input type="text" name="oIdentify" class="layui-input"></td>
            </tr>
            <tr>
                <td>请选择机餐</td>
                <c:choose>
                    <c:when test="${sessionScope.ticketsLevel==1}">
                        <td><input type="text" name="tFood" list="Food1" class="layui-input" />
                            <datalist id="Food1">
                                <option value="清蒸龙胆鱼">
                                <option value="玉竹百合煲土鸡">
                                <option value="招牌牛肉面">
                                <option value="菌菇佛跳墙">
                                <option value="日式咖喱牛小排">
                            </datalist>
                        </td>
                    </c:when>
                    <c:when test="${sessionScope.ticketsLevel==2}">
                        <td><input type="text" name="tFood" list="Food2" class="layui-input" />
                            <datalist id="Food2">
                                <option value="清蒸龙胆鱼">
                                <option value="玉竹百合煲土鸡">
                                <option value="招牌牛肉面">
                                <option value="菌菇佛跳墙">
                                <option value="日式咖喱牛小排">
                            </datalist>
                        </td>
                    </c:when>
                </c:choose>
                <%--                <td><input type="text" name="tFood"></td>--%>
            </tr>
            <tr>
                <td><input type="hidden" name="sId" value="<%=request.getParameter("sId")%>"></td>
            </tr>
            <tr>
                <td><input type="hidden" name="asId" value="${sessionScope.ticketasId}"></td>
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