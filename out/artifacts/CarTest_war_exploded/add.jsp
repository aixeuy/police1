
<%--
  Created by IntelliJ IDEA.
  User: Win7uX32
  Date: 2015/7/16
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add car</title>
</head>
<body>
<%
    String user=request.getParameter("user");
    //out.println(id);
    //Hbmain.data.onedit=Hbmain.data.list.get(id);
    response.setCharacterEncoding("GBK");
%>
<table>
    <form id="add" method="post" action="saved.jsp">
        <input type="hidden" name="user" value="<%out.print(user);%>">
        <input type="hidden" name="instr" value="add">
        <tr><td>车编号</td><td><input type="text" name="code"></td></tr>
        <tr><td>车身</td><td><input type="text" name="body"></td></tr>
        <tr><td>行为特征</td><td><select name="action">
            <option value="急速移动">急速移动</option>
            <option value="缓慢移动">缓慢移动</option>
            <option value="徘徊">徘徊</option>
        </select></td></tr>
        <tr><td>分类</td><td><select name="category">
            <option value="嫌疑车">嫌疑车</option>
            <option value="受害车">受害车</option>
        </select></td></tr>
        <tr><td>车牌</td><td><input type="text" name="board"></td></tr>
        <tr><td>属地</td><td><input type="text" name="region"></td></tr>
        <tr><td>遮挡车牌物品</td><td><input type="text" name="board_sh"></td></tr>
        <tr><td>车辆类型</td><td><input type="text" name="c_type"></td></tr>
        <tr><td>车牌类型</td><td><input type="text" name="b_type"></td></tr>
        <tr><td>外形特征</td><td><input type="text" name="o_character"></td></tr>
        <tr><td>贴膜颜色</td><td><input type="text" name="f_color"></td></tr>
        <tr><td><input type="submit" value="submit"></td><td><input type="reset" value="reset"></td></tr>
    </form>
    <tr><td></td><td>
        <form id="back" method="post" action="list.jsp">
            <input type="hidden" name="user" value="<%out.print(user);%>">
            <input type="submit" value="back">
        </form></td>
    </tr>
</table>
</body>
</html>

