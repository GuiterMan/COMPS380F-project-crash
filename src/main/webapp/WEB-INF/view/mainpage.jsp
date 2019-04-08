<%-- 
    Document   : mainpage
    Created on : 2019/4/8, 下午 03:05:13
    Author     : allanlam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>COMP S380F Web Applications: Design and Development</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
        <h1>COMPS380F Web Applications: Design and Development</h1>
        <form action="lecture" method="POST">
        <input type="radio" name="week1" value="week1">Week 1<br>
        <input type="radio" name="week2" value="week2">Week 2<br>
        <input type="radio" name="week3" value="week3">Week 3<br>
        <input type="radio" name="week4" value="week4">Week 4<br>
        <input type="radio" name="week5" value="week5">Week 5<br>
        <input type="radio" name="week6" value="week6">Week 6<br>
        <input type="radio" name="week7" value="week7">Week 7<br>
        <input type="radio" name="week8" value="week8">Week 8<br>
        <input type="radio" name="week9" value="week9">Week 9<br>
        <input type="submit" value="Sumbit"/>
        </form>
            
        <form action="mc" method="POST">
            Who is your lecturer: <br/>
            <input type="radio" name="mc" value="keith"/> Dr. Keith Lap Kei LEE <br/>
            <input type="radio" name="mc" value="andrew"/> Dr. Andrew Kwok-Fai LUI <br/>
            <input type="radio" name="mc" value="oliver"/> Dr. Oliver Tat Sheung AU <br/>
            <input type="radio" name="mc" value="tsli"/> Dr. LI Tak Sing <br/>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
