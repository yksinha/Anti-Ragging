<%@page import="com.javatpoint.dao2.*"%>
<jsp:useBean id="u" class="com.javatpoint.bean2.user2"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao2.delete(u);
response.sendRedirect("userform.jsp");
%>