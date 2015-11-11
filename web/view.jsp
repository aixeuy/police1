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
%>
<table>
    <tr><td>编号</td><td><%out.println(p.getId());%></td></tr>
    <tr><td>车编号</td><td><%out.println(p.getCode());%></td></tr>
    <tr><td>车身</td><td><%out.println(p.getBody());%></td></tr>
    <tr><td>行为特征</td><td><%out.println(p.getAction());%></td></tr>
    <tr><td>分类</td><td><%out.println(p.getCategory());%></td></tr>
    <tr><td>车牌</td><td><%out.println(p.getBoard());%></td></tr>
    <tr><td>属地</td><td><%out.println(p.getRegion());%></td></tr>
    <tr><td>遮挡车牌物品</td><td><%out.println(p.getBoard_sh());%></td></tr>
    <tr><td>车辆类型</td><td><%out.println(p.getC_type());%></td></tr>
    <tr><td>车牌类型</td><td><%out.println(p.getB_type());%></td></tr>
    <tr><td>外形特征</td><td><%out.println(p.getO_character());%></td></tr>
    <tr><td>贴膜颜色</td><td><%out.println(p.getF_color());%></td></tr>

    <!--private int id;
    private String code;//编号,
    @Column(name="body")
    private String body;//车身
    @Column(name="action")
    private String action;//行为特征(急速移动、缓慢移动、徘徊)
    @Column(name="category")
    private String category;//分类(嫌疑车、受害车),
    @Column(name="board")
    private String board;//车牌,
    @Column(name="region")
    private String region;//属地,
    @Column(name="board_sh")
    private String board_sh;//遮挡车牌物品,
    @Column(name="c_type")
    private String c_type;//车辆类型
    @Column(name="b_type")
    private String b_type;//车牌类型
    @Column(name="o_character")
    private String o_character;//外形特征,
    @Column(name="f_color")
    private String f_color;//贴膜颜色。-->
    <tr><td></td><td>
        <form id="f1" method="post" action="list.jsp">
            <input type="hidden" name="user" value="<%out.print(user);%>">
            <input type="submit" value="back">
        </form></td>
    </tr>
</table>
</body>
</html>
