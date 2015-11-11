<%@ page import="model.Car" %>
<%@ page import="Dao.Service" %>
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
    <title>view person</title>
</head>
<body>
<%
    String user=request.getParameter("user");
    int id=Integer.parseInt(request.getParameter("id"));
    //out.println(id);
    //Hbmain.data.onedit=Hbmain.data.list.get(id);
    Car p= Service.getCarByIndex(id);
    response.setCharacterEncoding("GBK");
%>
<table>
    <form id="edit" method="post" action="saved.jsp">
        <input type="hidden" name="user" value="<%out.print(user);%>">
        <input type="hidden" name="instr" value="edit">
        <tr><td>编号</td><td><%out.println(p.getId());%><input type="hidden" name="id" value=<%out.println(id);%>></td></tr>
        <tr><td>车编号</td><td><input type="text" name="code" value="<%out.println(p.getCode());%>"></td></tr>
        <tr><td>车身</td><td><input type="text" name="body" value="<%out.println(p.getBody());%>"></td></tr>
        <tr><td>行为特征</td><td><select name="action">
            <option value="急速移动"<%if(p.getAction().equals("急速移动")){out.print("selected=\"selected\"");}%>>急速移动</option>
            <option value="缓慢移动"<%if(p.getAction().equals("缓慢移动")){out.print("selected=\"selected\"");}%>>缓慢移动</option>
            <option value="徘徊"<%if(p.getAction().equals("徘徊")){out.print("selected=\"selected\"");}%>>徘徊</option>
            </select></td></tr>
        <tr><td>分类</td><td><select name="category">
            <option value="嫌疑车"<%if(p.getCategory().equals("嫌疑车")){out.print("selected=\"selected\"");}%>>嫌疑车</option>
            <option value="受害车"<%if(p.getCategory().equals("受害车")){out.print("selected=\"selected\"");}%>>受害车</option>
        </select></td></tr>
        <tr><td>车牌</td><td><input type="text" name="board" value="<%out.println(p.getBoard());%>"></td></tr>
        <tr><td>属地</td><td><input type="text" name="region" value="<%out.println(p.getRegion());%>"></td></tr>
        <tr><td>遮挡车牌物品</td><td><input type="text" name="board_sh" value="<%out.println(p.getBoard_sh());%>"></td></tr>
        <tr><td>车辆类型</td><td><input type="text" name="c_type" value="<%out.println(p.getC_type());%>"></td></tr>
        <tr><td>车牌类型</td><td><input type="text" name="b_type" value="<%out.println(p.getB_type());%>"></td></tr>
        <tr><td>外形特征</td><td><input type="text" name="o_character" value="<%out.println(p.getO_character());%>"></td></tr>
        <tr><td>贴膜颜色</td><td><input type="text" name="f_color" value="<%out.println(p.getF_color());%>"></td></tr>
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
