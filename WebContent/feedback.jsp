<%@ page import ="java.sql.*" %>
<%
    String Name = request.getParameter("name");    
    String Email = request.getParameter("Email");
    String Contact = request.getParameter("comments");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into feedback(name, Email,comments, regdate) values ('" + Name + "','" + Email + "','" + Contact + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome1.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.html");
    }
%>