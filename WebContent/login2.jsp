<%@ page import ="java.sql.*" %>
 <%
    String userid = request.getParameter("email");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register",
    		"root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from register where email='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success2.jsp");
    } else {
        out.println("Invalid password <a href='complaince2.html'>try again</a>");
    }
 %>


