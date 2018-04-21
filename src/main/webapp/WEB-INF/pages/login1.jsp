

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html >
  <head>
    <meta charset="UTF-8">
    <title>K-Auction</title>
    
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/reset.css">

    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

    
    <style type="text/css">
      #cover{
        top:100px;
      }
      .form-module button,.form-module .toggle{
          background: rgb(78, 156, 80);
      }
      .form-module{
          bordder-top:5px solid rgb(78, 156, 80);
      }
      .form-module h2{
          color:rgb(78, 156, 80);
      }
    </style>
    
  </head>

  <body>

 
<div class="module form-module" id="cover">
  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
    <div class="tooltip">Click Me</div>
  </div>
  <div class="form">
    <h2>Login to your account</h2>
    <form method="post" action>
      <input type="text" placeholder="Username"/>
      <input type="password" placeholder="Password"/>
      <input type="submit" value="Login" style="background:rgb(78, 156, 80);">
    </form>
  </div>
  <div class="form">
    <h2>Create an account</h2>
    <form>
      <input type="text" placeholder="Username"/>
      <input type="password" placeholder="Password"/>
      <input type="email" placeholder="Email Address"/>
      <input type="tel" placeholder="Phone Number"/>
      <button>Register</button>
    </form>
  </div>
  <div class="cta"><a href="http://andytran.me">Forgot your password?</a></div>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 

    <script src="${pageContext.request.contextPath }/resources/js/index.js"></script>

    
    
    
  </body>
</html>
