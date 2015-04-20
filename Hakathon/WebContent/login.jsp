<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Login</title>
<style type="text/css">
html {
	background: url(youtube.jpg) no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	position: relative;
}

h1 {
	width: 270px;
	line-height: 43px;
	margin: 50px auto 20px;
	font-size: 19px;
	font-weight: 500;
	color: white;
	color: rgba(255, 255, 255, 0.95);
	text-align: center;
	text-shadow: 0 1px rgba(0, 0, 0, 0.3);
	background: #d7604b;
	border-radius: 3px;
	background-image: -webkit-linear-gradient(top, #dc745e, #d45742);
	background-image: -moz-linear-gradient(top, #dc745e, #d45742);
	background-image: -o-linear-gradient(top, #dc745e, #d45742);
	background-image: linear-gradient(to bottom, #dc745e, #d45742);
	-webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), inset 0 0 0
		1px rgba(255, 255, 255, 0.05), 0 0 1px 1px rgba(0, 0, 0, 0.1), 0 1px
		3px rgba(0, 0, 0, 0.3);
	box-shadow: inset 0 1px rgba(255, 255, 255, 0.1), inset 0 0 0 1px
		rgba(255, 255, 255, 0.05), 0 0 1px 1px rgba(0, 0, 0, 0.1), 0 1px 3px
		rgba(0, 0, 0, 0.3);
}

div.wrapper {
	height: 100%;
	width: 50%;
	margin-right: auto;
	margin-left: auto;
	padding-top: 150px;
	padding-left: 250px;
}

.display input[type="submit"] {
	background: #d7604b;
	border: 1px solid #ffffff;
	border-radius: 15px;
	-moz-border-radius: 15px;
	-webkit-border-radius: 15px;
	-ms-border-radius: 15px;
	-o-border-radius: 15px;
	color: #fff;
	font-weight: bold;
	line-height: 40px;
	text-align: center;
	text-transform: uppercase;
	width: 180px;
}

table {
	position: relative;
}

.input1 {
	display: block;
	width: 100%;
	height: 38px;
	margin-top: 2px;
	font-weight: 500;
	font-size: 18px;
	background: none;
	border: 0;
	border-bottom: 1px solid #d8d8d8;
}

.input2 {
	display: block;
	width: 100%;
	height: 20px;
	margin-top: 2px;
	font-weight: 300;
	font-size: 10px;
	background: none;
	border: 0;
	border-bottom: 1px solid #d8d8d8;
}
</style>
</head>
<body>
<script>
    $(document).ready(function(){
       $('#login').click(function()
       {   
          var user=$('#userid').val();
          var pwd=$('#passwd').val();
          $.ajax({
               type: "POST",
               url:"./google/LoginServlet",
               data:{"user":user,"password":pwd},
               success: function (data) {
                  if(data=='True'){
                    $(location).attr('href','main.jsp');
                  }else{
                      alert('Fail....');
                  }
               }
             });                                
           });
         });
   </script>

<f:view>
<div class="display" id="ldiv">
		
			<table width="10%" cellpadding="3" align="left">
				<thead>
					<tr>
						<th colspan="2"><h1>Login Here</h1></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>UserId</td>
						<td><input type="text" name="userid" value="" class="input1"
							id="userid"></td>

					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="passwd" value=""
							class="input1" id="passwd"></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="remember"
							value="Remember me" class="input2" id="rem"></td>
						<td>Remember me</td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" style="width: 100%"
							value="Submit" class="subinput" id="login" /></td>
					</tr>
					<tr>
						<th colspan="3"><a href="forgotpassword.jsp">Forgot your password? Click here</a></th>
					</tr>
				</tbody>
			</table>
			</div>

</f:view>
</body>
</html>