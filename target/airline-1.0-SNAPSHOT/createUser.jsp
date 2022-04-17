
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body background="background.png">
<div>
    <form action="${pageContext.request.contextPath}/registerUser.do" method="post">
        <table align="center" style="position:absolute;top:30%;left:37%;background:rgba(255,255,255,0.3)">
           <tr>
               <th>请输入身份证号</th>
               <td><input type="text" name="uIdentify"></td>
           </tr>
            <tr>
                <th>请输入真实姓名</th>
                <td><input type="text" name="uName"></td>
            </tr>
            <tr>
                <th>请输入您的性别</th>
                <td><input type="radio" name="uSex" value="男" checked="checked" />男
                    <input type="radio" name="uSex" value="女" />女
                </td>
            </tr>
            <tr>
                <th>请输入您的密码</th>
                <td><input type="password" name="uPassword"></td>
            </tr>

            <tr>
                <th colspan="2" >
                    <input style="font-size:19px;background-color:#00aeff;border-style:none" type="submit" value="提交">
                    <input style="font-size:19px;background-color:#00aeff;border-style:none" type="reset" value="重置">
                </th>
            </tr>
        </table>

    </form>
</div>
</body>
</html>
