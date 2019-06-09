<%@page import="com.javatpoint.dao3.UserDao3"%>
<jsp:useBean id="u" class="com.javatpoint.bean3.user3"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDao3.update(u);
response.sendRedirect("userform3.jsp");
%>