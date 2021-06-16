<%-- 
    Document   : cerrarSesion
    Created on : 09-29-2017, 04:53:15 PM
    Author     : VA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%  
    HttpSession objSesion = request.getSession();  
    objSesion.invalidate();
    out.print("<script>location.replace('../index.jsp');</script>");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        
    </body>
</html>
