
<%@page import="com.techtalk.TechTalkDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
			<h2>
			Welcome
			<%=session.getAttribute("user")%></h2>
			<a  class="btn btn-info" href="LogoutServlet" style="float: right">LogOut</a>

	</div>
	
	<center>
		<h1>ATMECS Tech Talk Management</h1>
        <h2>
        	
        	<a href="requestTalk">Request TechTalk</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All TechTalk</a>
        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of TechTalk</h2></caption>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Presentor</th>
                <th>TechTalkDate</th>
                
                <th>Status</th>
            </tr>
            <c:forEach var="techtalk" items="<%=TechTalkDAO.listAllTalks()%>">
                <tr>
                    <td><c:out value="${techtalk.id}" /></td>
                    <td><c:out value="${techtalk.title}" /></td>
                    <td><c:out value="${techtalk.description}" /></td>
                    <td><c:out value="${techtalk.presentor}" /></td>
                    <td><c:out value="${techtalk.techTalkDate}" /></td>
                    <td>
                    	<a href="reg?id=<c:out value='${techtalk.id}' />">Register</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	                   	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	


</body>
</html>