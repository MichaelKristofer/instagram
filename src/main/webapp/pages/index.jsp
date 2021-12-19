<%--
  Created by IntelliJ IDEA.
  User: Dadddddy
  Date: 30.10.2021
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Instagram</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<ul class="nav">
    <c:if test="${sessionScope.user == null}">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/registration">Registration</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/authorisation">Authorisation</a>
        </li>
    </c:if>
    <c:if test="${sessionScope.user != null}">
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="/settings">Account settings</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="/post">Create post</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="/logout">Logout</a>
        </li>
    </c:if>
</ul>
<div class="container">
    <c:forEach items="${requestScope.posts}" var="post">
        <div class="row justify-content-center mt-3 mb-3">
            <div class="col-sm-6">
                <div class="card">
                    <img src="https://i.guim.co.uk/img/media/d5b563bef60c06a22dc65a18c391f63ff42549e6/0_205_4288_2573/master/4288.jpg?width=1200&quality=85&auto=format&fit=max&s=f69dafe4bb0bc828c5e07298240f1d3a"
                         class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><a class="nav-link" href="/viewUser?id=${post.user.id}">Author: ${post.user.name}</a></h5>
                        <p class="card-text">${post.text}</p>
                        <a href="/viewPost?id=${post.id}" class="btn btn-primary">Open</a>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
