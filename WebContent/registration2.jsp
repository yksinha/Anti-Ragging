<%@ page import ="java.sql.*" %>
 <%
    String name = request.getParameter("name");   
    String pwd = request.getParameter("password");    
    String email = request.getParameter("email");
    String sex = request.getParameter("sex");
    String country = request.getParameter("country");
    String reply = request.getParameter("reply");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into register(name,password,email,sex,country,reply ) values ('" + name+ "','" + pwd + "','" + email + "','" + sex + "','" + country + "','" + reply + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome2.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
 %>