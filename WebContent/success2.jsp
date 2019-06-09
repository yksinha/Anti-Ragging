<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>User page</title>
  <style> 
 body {
  background: url(https://techcrunch.com/wp-content/uploads/2017/06/facebook-group-admin-tools.png?w=1390&crop=1) no-repeat center fixed; 
  background-size: cover;
      font: 800 30px Lato, sans-serif;
      line-height: 1.8;
      color:white;
      padding:20px;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
</body>
</html>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.html">Please Login</a>
<%} else {
%>
Welcome User :<pre><%=session.getAttribute("userid")%><a href='complaince2.html'>
Log out</a></pre>
<pre>
<a href="userform3.jsp" type="btn" class="btn">View Complaince</a>
</pre>
<%
    }
%>