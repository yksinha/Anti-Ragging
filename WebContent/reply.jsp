<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Action form for administration</title>
<style> 

 body {
 background: url(https://techcrunch.com/wp-content/uploads/2017/06/facebook-group-admin-tools.png?w=1390&crop=1) no-repeat center fixed; 
  background-size: cover;
      font: 800 30px Lato, sans-serif;
      line-height: 1.8;
      color:black;
      padding:20px;
  }
  table{
  border-collapse:collapse;
  width:100%
  }
   tr:nth-child(even){
  background-color:black;
  }
  tr:nth-child(odd){
  background-color:pink;
  }
  th{
  color:white;
  background-color:orange;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<%@page import="com.javatpoint.dao3.UserDao3,com.javatpoint.bean3.user3"%>

<%
String id=request.getParameter("id");
user3 u=UserDao3.getRecordById(Integer.parseInt(id));
%>
<pre><h1>Action form for administration</h1></pre>
    <form action="edituser.jsp" method="post">
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<input type="hidden" name="country" value="<%=u.getCountry() %>"/>
<input type="hidden" name="sex" value="<%=u.getSex() %>"/>
<table>
<tr><td><pre>Please fill action form:</pre></td><td><input type="text" size="100"  name="reply" value="<%= u.getreply()%>"/></td></tr>

<tr><td></td><td><input type="hidden" name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td></td><td><input type="hidden" name="password" value="<%= u.getPassword()%>"/></td></tr>
<tr><td></td><td><input type="hidden" name="email" value="<%= u.getEmail()%>"/></td></tr>
<tr><td></td><td>
<br> 
<br> 
<br> 
<br> 
</td></tr>
<tr><td colspan="2"><input type="submit" value="SUBMIT"/></td></tr>
</table>
       </form>
   </body>
</html>