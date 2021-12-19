<%--
  Created by IntelliJ IDEA.
  User: Dadddddy
  Date: 31.10.2021
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account settings</title>
</head>
<body>
<form action="/settings" method="post">
<div class="mb-3">
    <label for="name" class="form-label">Update name</label>
    <input type="text" class="form-control" id="name" name="name">
</div>
<div class="mb-3">
    <label for="login" class="form-label">Update login</label>
    <input type="text" class="form-control" id="login" name="login">
</div>
<div class="mb-3">
    <label for="password" class="form-label">Update password</label>
    <input type="text" class="form-control" id="password" name="password">
</div>
    <button type="submit" class="btn btn-primary">Submit all</button>
</form>
</body>
</html>
