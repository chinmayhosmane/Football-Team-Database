<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index_login_coach.jsp");
%>