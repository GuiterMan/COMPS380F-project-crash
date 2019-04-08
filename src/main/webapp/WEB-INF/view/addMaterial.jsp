<%-- 
    Document   : addMaterial
    Created on : 2019/4/8, 下午 04:51:27
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

        <h2>Course Material:</h2>
        <form:form method="POST" enctype="multipart/form-data" modelAttribute="ticketForm">
            
            <form:label path="title">Lecture Title:</form:label><br/>
            <form:input type="text" path="title" /><br/><br/>
            <b>Attachments:</b><br/>
            <input type="file" name="attachments" multiple="multiple"/><br/><br/>
            <form:label path="comment">Comments</form:label><br/>
            <form:textarea path="comment" rows="5" cols="30" /><br/><br/>
            <input type="submit" value="Submit"/>
        </form:form>
    </body>
</html>
