<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="/jquery/jquery-2.1.3.min.js"></script>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/css/kop.css"/>

</head>
<body>
<div class="container">
    <div class="kop-login-form">

        <h2 align="center">登录</h2>

        <form id="login" action="/login" method="post">
            <label for="username" class="sr-only">Email address</label>
            <input type="email" id="username" name="username" class="form-control" placeholder="账号" required autofocus>
            <br/>
            <label for="password" class="sr-only">Password</label>
            <input type="password" name="password" id="password" class="form-control" placeholder="密码" required>
            <br/>
            <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        </form>
        <br/>

    </div>
</div>
</body>
</html>