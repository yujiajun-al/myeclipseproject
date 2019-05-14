<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'login.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		
	</style>
	
	<!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/statics/fonts/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/statics/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="${pageContext.request.contextPath }/statics/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/statics/build/css/custom.min.css" rel="stylesheet">
  </head>
  
  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form>
              <h1>Login Form</h1>
              <div>
                <input type="text" class="form-control" id="loginName" placeholder="loginName" required="" />
              </div>
              <div>
                <input type="password" class="form-control" id="passWord" placeholder="Password" required="" />
              </div>
              <div style="taxt-align:center;">
                <input type="text" class="form-control" id="codetext" placeholder="codetext" required="" style="width: 60%;"/>
              	<img class="img" alt="" src="${pageContext.request.contextPath }/User/Validate" width="60px" height="25px" id="code" onclick="change()">
              </div>
              <div>
                <a class="btn btn-default submit" id="dl" href="#">Log in</a>
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                  <p>©2019 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form>
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" id="userName2" placeholder="Username" required="" />
              </div>
              <div>
                <input type="text" class="form-control" id="loginName2" placeholder="Loginname" required="" />
              </div>
              <div>
                <input type="password" class="form-control" id="passWord2" placeholder="Password" required="" />
              </div>
              <div>
                <input type="text" class="form-control" id="type" placeholder="type" required="" />
              </div>
              <div>
                <a class="btn btn-default submit" id="zc" href="#">Submit</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                  <p>©2019 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$("#dl").bind("click",function(){
    			var loginName=$("#loginName").val();
    			var passWord=$("#passWord").val();
    			var codetext=$("#codetext").val();
    			$.ajax({
    				url:"${pageContext.request.contextPath }/User/login",
    				type:"post",
    				dataType:"json",
    				data:{loginName:loginName,passWord:passWord,codetext:codetext},
    				success:function(data){
	  					if(data.num=="0"){
	  						alert("你输入的验证码错误！请重新输入。");
	  						location.href="${pageContext.request.contextPath }/User/";
	  					}else if(data.num=="1"){
	  						alert("bing");
	  						location.href="${pageContext.request.contextPath }/Login/index";
	  					}else if(data.num=="2"){
  							alert("用户不存在！");
  							location.href="${pageContext.request.contextPath }/User/";
  						}else if(data.num=="3"){
  							alert("密码错误！");
  							location.href="${pageContext.request.contextPath }/User/";
  						}
  					},
  					error:function(data){
  						alert("0");
  						alert(data);
  					} 
    			});
    		});
    		
    		$("#zc").bind("click",function(){
    			var userName=$("#userName2").val();
    			var loginName=$("#loginName2").val();
    			var passWord=$("#passWord2").val();
    			var type=$("#type").val();
    			$.ajax({
    				url:"${pageContext.request.contextPath }/User/save",
    				type:"post",
    				dataType:"json",
    				data:{userName:userName,loginName:loginName,passWord:passWord,type:type},
    				success:function(data){
	  					if(data.result=="0"){
	  						alert("添加成功！");
	  					}else if(data.result=="1"){
	  						alert("添加失败！");
	  					}else if(data.result=="2"){
	  						alert("用户已存在！");
	  					}
  					},
  					error:function(data){
  						alert("0");
  						alert(data);
  					} 
    			});
    		});
    	});
    	
    
		//点击更新验证码
		function change(){
			document.getElementById("code").src="${pageContext.request.contextPath }/User/Validate?a="+new Date();
		}
    </script>
  </body>
</html>
