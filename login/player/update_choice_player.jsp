<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<html>

<head>
<title>update player</title>
</head>

<body>

<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="update_player_action.jsp">

<h2 align="center">Type the Player ID you want to modify</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Player ID:</b></td>
<td width="50%"><input name="p_id" type="text" value="" size=20 maxlength="22"/> </td>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</tr>
</form>
</td>
</tr>

</body>
</html>
