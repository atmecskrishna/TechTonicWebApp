<%@page import="com.techtalk.TechTalkDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>ATMECS Tech Talk Application</title>
</head>
<body>

	<div>
			<h2>
			Welcome
			<%=session.getAttribute("user")%></h2>
			<a  class="btn btn-info" href="logoutServlet" style="float: right">LogOut</a>

	</div>
	<center>
		<h1>ATMECS Requested Tech Talks</h1>
		<h2><a href="list">list All TechTalk</a></h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Requested TechTalk</h2></caption>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Presentor</th>
                <th>TechTalkDate</th>
                <th>Status</th>
            </tr>
            <c:forEach var="techtalk" items="<%=TechTalkDAO.listAllRequestedTalks()%>">
                <tr>
                    <td><c:out value="${techtalk.id}" /></td>
                    <td><c:out value="${techtalk.title}" /></td>
                    <td><c:out value="${techtalk.description}" /></td>
                    <td><c:out value="${techtalk.techTalkDate}" /></td>
                    <td><c:out value="${techtalk.presentor}" /></td>
                    
                    <td>
                    	<a href="approve?id=<c:out value='${techtalk.id}'/>">Accept</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${techtalk.id}' />">Decline</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
