<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>user page</title>
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
  th,td{
  text-align:left;
  padding:8px;
  }
   tr:nth-child(even){
  background-color:pink;
  }
  tr:nth-child(odd){
  background-color:yellow;
  }
  th{
  color:white;
  background-color:orange;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<%@page import="com.javatpoint.dao3.UserDao3,com.javatpoint.bean3.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<pre><h1>View action taking by Administration</h1> 
<h2><a href='success2.jsp'>HOME</a></h2></pre>
<%
List<user3> list=UserDao3.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>Name</th><th>compliance by user</th><th>Action by Administration</th><th>registration form for compliance</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getCountry()}</td><td>${u.getreply()}</td><td><a href="reply2.jsp?id=${u.getId()}">registration form</a></td></tr>
</c:forEach>
</table>

</body>
</html>