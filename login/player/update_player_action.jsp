<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<title>Update Database</title>
</head>

<body>

<%
String p_id =request.getParameter("p_id");
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;
String db = "fifa";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"root","root");
try{
Statement st = con.createStatement();
String query = "SELECT * FROM player where p_id='"+p_id+"'";
ResultSet rs = st.executeQuery(query);
while (rs.next()) {
%>


<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="update_player2_action.jsp">
<h2 align="center">Insert Into Database</h2>
<table border="1" width="100%">

<tr>
<td width="50%"><b>Player name:</b></td>
<td width="50%"><input type="text" name="p_name" value="<%=rs.getString("p_name")%>"/> </td>
</tr>
<td width="50%"><b>Player ID:</b></td>
<td width="50%"><input type="text" name="p_id" value="<%=rs.getString("p_id")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Player Position:</b></td>
<td width="50%"><input type="text" name="p_pos" value="<%=rs.getString("p_pos")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Player Wage:</b></td>
<td width="50%"><input type="text" name="p_wage" value="<%=rs.getString("p_wage")%>" size="21"></td>
</tr>
<tr>
<td width="50%"><b>Player jersey No:</b></td>
<td width="50%"><input type="text" name="p_jno" value="<%=rs.getString("p_jno")%>" size="21"></td>
</tr>
<td width="50%"><b>Player career:</b></td>
<td width="50%"><input type="text" name="p_care" value="<%=rs.getString("p_care")%>" size="21"></td>
</tr>
<td width="50%"><b>Player Rating:</b></td>
<td width="50%"><input type="text" name="p_rating" value="<%=rs.getString("p_rating")%>" size="21"></td>
</tr>
<td width="50%"><b>Player Age:</b></td>
<td width="50%"><input type="text" name="p_age" value="<%=rs.getString("p_age")%>" size="21"></td>
</tr>
<td width="50%"><b>Player Club:</b></td>
<td width="50%"><input type="text" name="p_club" value="<%=rs.getString("p_club")%>" size="21"></td>
</tr>
<td width="50%"><b>Player Coach ID:</b></td>
<td width="50%"><input type="text" name="p_cid" value="<%=rs.getString("p_cid")%>" size="21"></td>
</tr>
</table>
<p><input type="submit" value="Update" name="submit">
<input type="reset" value="Reset" name="reset"></p>

</form>
</td>
</tr>
</table>


<%}

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
</body>

</html>