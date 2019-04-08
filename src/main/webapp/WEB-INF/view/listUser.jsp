<%-- 
    Document   : listUser
    Created on : 2019/4/8, 下午 04:56:59
    Author     : allanlam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Lecturer's Pannel</title>
    </head>
    <body>
    <c:url var="logoutUrl" value="/logout"/>
    <form action="${logoutUrl}" method="post">
        <input type="submit" value="Log out" />
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
    
    <br /><br />
    <c:choose>
        <c:when test="${fn:length(student) == 0}">
            <i>There are no student in the system.</i>
        </c:when>
        <c:otherwise>
            <table>
                <tr>
                    <th>UserID</th><th>Password</th><th>Roles</th><th>Action</th>
                </tr>
                <c:forEach items="${ticketUsersstudent}" var="user">
                    <tr>
                        <td>${user.userid}</td><td>${user.password}</td>
                        <td>
                    <c:forEach items="${user.roles}" var="role" varStatus="status">
                        <c:if test="${!status.first}">, </c:if>
                            ${role.role}
                    </c:forEach>
                    </td>
                    <td>
                        [<a href="<c:url value="/user/delete/${user.userid}" />">Delete</a>]
                    </td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
</body>
</html>
