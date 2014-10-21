<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<link href="web.css" rel="stylesheet" type="text/css" />
        <title>Registration</title>
    </head>
    <body>
	<div id="divWrapper">
	<div id="DivContent">
        <form method="post" action="registration_coach.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" required value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" required value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" required value="" /></td>
                    </tr>
                    <tr>
                        <td>User ID(Coach ID)</td>
                        <td><input type="text" name="uname" required value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" required value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index_login_coach.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
		</div>
		</div>
    </body>
</html>
