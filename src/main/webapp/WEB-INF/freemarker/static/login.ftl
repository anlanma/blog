<!DOCTYPE html>
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
	        
	        <form id="login">
	        	<label for="account" class="sr-only">Email address</label>
	        	<input type="email" id="account" name="account" class="form-control" placeholder="账号" required autofocus>
	        	<br/>
	        	<label for="inputPassword" class="sr-only">Password</label>
		    	<input type="password" name="pwd" id="pwd" class="form-control" placeholder="密码" required>
	        	<input type="hidden" name="password" id="password">
	        	<br/>
		    </form>

			<button class="btn btn-lg btn-primary btn-block" onclick="login()">登录</button>
			<br/>
	     
	    </div>
	</div>
</body>
</html>