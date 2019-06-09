<%@page import="com.javatpoint.dao3.*"%>
<jsp:useBean id="u" class="com.javatpoint.bean3.user3"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao3.delete(u);
response.sendRedirect("userform2.jsp");
%>