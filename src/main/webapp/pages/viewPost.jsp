<%--
  Created by IntelliJ IDEA.
  User: Dadddddy
  Date: 31.10.2021
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Post</title>
</head>
<body>
<p>${requestScope.post.text}</p>
<p>${requestScope.post.user.name}</p>
</body>
</html>
