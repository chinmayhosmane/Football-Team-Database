<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<html>
<head>
<link href="web.css" rel="stylesheet" type="text/css" />
<script>
function go() {
window.location.replace("logout_coach.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>
<title>Retrive value from database</title>
</head>
<body>
<div id="divWrapper">
<table border="0" width="75%" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<h2><font color="#FF0033">Retrive data from database</font></h2>
<form method="POST" >
<table border="1" width="100%" cellspacing="0" cellpadding="0" bgcolor="#CCFFCC">
<tr>
<td width="50%"><b>Club Name:</b></td>
<td width="50%"><b>Club Country</b></td>
<td width="50%"><b>Club Location</b></td>
<td width="50%"><b>Club League</b></td>
<td width="50%"><b>Club Established</b></td>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "SELECT * FROM club";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>

<tr>
<td width="50%" valign="right"><%=rs.getString("club_name")%><br/></td>

<td width="50%"><%=rs.getString("cl_country")%><br/></td>
<td width="50%"><%=rs.getString("cl_location")%><br/></td>
<td width="50%"><%=rs.getString("cl_league")%><br/></td>
<td width="50%"><%=rs.getString("cl_est")%><br/></td>

</tr>

<%}

out.println("<br/><a href=insert_club.jsp><b>Insert Data page</b></a>");
rs.close();
con.close();

}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
</div>
</tr>
</table>
</form>
</td>
</tr>
</table>
</body>
</html>