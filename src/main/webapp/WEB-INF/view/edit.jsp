<%-- 
    Document   : edit
    Created on : 2019/4/8, 下午 03:58:43
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
        <form method="POST">
            
        </form>
          
       
    </body>
</html>
