<%@ page import="Dao.Service" %>
<%--
  Created by IntelliJ IDEA.
  User: Win7uX32
  Date: 2015/7/17
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
</head>
<body>
<%
    request.setCharacterEncoding("GBK");
    String user=request.getParameter("user");
    String instr=request.getParameter("instr");
    if(instr.equals("edit")) {
        int id = Integer.parseInt(request.getParameter("id"));
        String code = request.getParameter("code");
        String body=request.getParameter("body");
        String action=request.getParameter("action");

        Service.edit(Service.getCarByIndex(id),code,body,action,
                request.getParameter("category"),request.getParameter("board"),request.getParameter("region"),request.getParameter("board_sh")
                ,request.getParameter("c_type"),request.getParameter("b_type"),request.getParameter("o_character"),
                request.getParameter("f_color"));
    }
    else if(instr.equals("add")){
        String code = request.getParameter("code");
        String body=request.getParameter("body");
        String action=request.getParameter("action");
        Service.addCar(code, body, action,
                request.getParameter("category"), request.getParameter("board"), request.getParameter("region"), request.getParameter("board_sh")
                , request.getParameter("c_type"), request.getParameter("b_type"), request.getParameter("o_character"),
                request.getParameter("f_color"));
    }
    else if(instr.equals("delete")){
        int id = Integer.parseInt(request.getParameter("id"));
        Service.deleteCar(Service.getCarByIndex(id));
    }
%>
<p>已保存</p>
<form id="back" method="post" action="list.jsp">
    <input type="hidden" name="user" value="<%out.print(user);%>">
    <input type="submit" value="back">
</form>
</body>
</html>
