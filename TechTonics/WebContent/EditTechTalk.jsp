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
		<h1>ATMECS Tech Talk Management</h1>
        <h2>
        	<a href="new">Add New Tech Talk</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All Tech Talk</a>
        	
        </h2>
	</center>
    <div align="center">
		<c:if test="${techtalk != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${techtalk == null}">
			<form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            		<c:if test="${techtalk != null}">
            			Edit Tech Talk
            		</c:if>
            		<c:if test="${techtalk == null}">
            			Add New Tech Talk
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${techtalk != null}">
        			<input type="hidden" name="id" value="<c:out value='${techtalk.id}' />" />
        		</c:if>            
            <tr>
                <th>Title: </th>
                <td>
                	<input type="text" name="title" size="45"
                			value="<c:out value='${techtalk.title}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Description: </th>
                <td>
                	<input type="text" name="description" size="45"
                			value="<c:out value='${techtalk.description}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Presentor </th>
                <td>
                	<input type="text" name="presentor" size="5"
                			value="<c:out value='${techtalk.presentor}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Tech Talk Date </th>
                <td>
                	<input type="date" name="techTalkDate" size="5"
                			value="<c:out value='${techtalk.techTalkDate}' />"
                	/>
                </td>
            </tr>
            <tr>
                
                
                	<input type="hidden" name="status" size="5"
                			value="<c:out value='${techtalk.status}' />"
                	/>
               
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
