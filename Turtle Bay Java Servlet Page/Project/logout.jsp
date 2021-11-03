<%
request.getSession().removeAttribute("uname");
response.sendRedirect("SignInPage.jsp");

%>