<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<form name="Register" action="register" method="post">
	<table align="center">
		<tr>
			<td>UserName</td>
			<td><input type="text" name="username" /></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" /></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" /></td>
		</tr>		
		<tr>
			<td><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Register"></input><input type="reset" value="Reset"></input></td>
		</tr>
	</table>
</form>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
	<title>ATMECS Tech Talk Application</title>
</head>
<body>
	<center>
		<h1>Register New User</h1>
        
	</center>
    <div align="center">
		<c:if test="${user != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${user == null}">
			<form action="RegisterServlet" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            
        		<c:if test="${user != null}">
        			<input type="hidden" name="userid" value="<c:out value='${user.id}' />" />
        		</c:if>            
            <tr>
                <th>User Name </th>
                <td>
                	<input type="text" name="userName" size="45"
                			value="<c:out value='${user.userName}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Email</th>
                <td>
                	<input type="email" name="emailId" size="45"
                			value="<c:out value='${user.emailId}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Password </th>
                <td>
                	<input type="password" name="password" size="5"
                			value="<c:out value='${user.password}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Role </th>
                <td>
                	<input type="hidden" name="role" size="5"
                			value=1
                	/>
                </td>
            </tr>
           
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" />
            	</td>
            </tr>
        </table>
        </form>
    </div>	
</body>
</html>