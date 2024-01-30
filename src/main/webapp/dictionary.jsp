<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 30/01/2024
  Time: 9:08 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
Map<String,String> dictionary = new HashMap<>();
%>
<%
    dictionary.put("cat","con mèo");
    dictionary.put("dog","con chó");
    dictionary.put("banana","quả chuối");
    dictionary.put("mango","quả xoài");
    dictionary.put("sun","mặt trời");
    String search = request.getParameter("search");
    String result = dictionary.get(search);
    if (result != null) {
        System.out.println("Wold: " + search);
        System.out.println("Result: " + result);
    }else {
        System.out.println("Not Found");
    }
%>
</body>
</html>
