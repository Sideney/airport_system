<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>欢迎来到航班管理系统</title>
    <link rel="stylesheet" href="layui-v2.6.8/layui/css/layui.css">
</head>
<style type="text/css" >
    h3{color: #5e5e5e;
        font-size: 20px;
        text-align: center;
    }

    .loginform{
        text-align: center;
        font-size:18px;
        font-family:宋体;
        font-weight: bold;
        color: #444444;

    }

    #bgcolor1{
        background: rgb(255, 255, 255);
        position:absolute;
        top:20%;
        left: 20%;
        height:40% ;
    }

</style>
<script >
    function check_login() {
        if(document.form1.uIdentify.value==""||document.form1.uPassword.value=="")
        {
            alert("请检查用户名或密码是否为空！");

        }

    }
</script>
<body background="background.png">
<c:if test="${flag==true}">
    <script>
        alert("用户用户名或密码错误！");
    </script>
</c:if>
<div id="bgcolor1" style="width: 23%;margin: auto">

    <br/>
    <br/>

    <h3>欢迎来到航班管理系统</h3>
    <br/>
    <h3>请用户登录</h3>
    <br/>
    <form name="form1" action="${pageContext.request.contextPath}/loginUser.do" method="post">
        <table align="center">
            <tr>
                <td><label class="layui-form-label">账号</label></td>
                <td><input type="text" name="uIdentify" placeholder="请输入身份证号" class="layui-input" ></td>
            </tr>
            <tr>
                <td><label class="layui-form-label">密码</label></td>
                <td><input type="password" name="uPassword"} class="layui-input"></td>
            </tr>

            <td>&nbsp</td>
            <td>&nbsp</td>

            <tr>
                <td colspan="2" class="loginform">
                    <input class="layui-btn layui-btn-normal layui-btn-radius" type="submit" value="登录" onclick="check_login()">
                    <input class="layui-btn layui-btn-normal layui-btn-radius" type="button" value="注册" onclick="javascript: top.location.href = 'createUser.jsp'">
                    <input class="layui-btn layui-btn-normal layui-btn-radius" type="button" value="切换至管理员登录" onclick="javascript: top.location.href = 'loginAdminIndex.jsp'">
                </td>
            </tr>

        </table>

    </form>
</div>
</body>
</html>
