<%-- 
    Document   : listar
    Created on : 15/06/2021, 11:54:08 PM
    Author     : María Fernanda
--%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Productos</title>
</head>
<body>
 <h1>Listar Productos</h1>
 <table border="1">
  <tr>
   <td>idUsuario</td>
   <td>nombreUsuario</td>
   <td>clave</td>
   <td>tipoUsuario</td>
  </tr>
  <c:forEach var="estudiante" items="${lista}">
  <tr>
    <td>
     <a href="estudiante?opcion=listar&idUsuario=<c:out value="${ estudiante.idUsuario}"></c:out>">
      <c:out value="${estudiante.idUsuario}"></c:out>
     </a>
    </td>
    <td><c:out value="${ estudiante.idUsuario}"></c:out></td>
    <td><c:out value="${ estudiante.nombreUsuario}"></c:out></td>
    <td><c:out value="${ estudiante.clave}"></c:out></td>
    <td><c:out value="${ estudiante.tipoUsuario}"></c:out></td>
    <td>
     <a href="productos?opcion=eliminar&id=<c:out value="${ estudiante.id}"></c:out>">
      Eliminar 
     </a>
    </td>
  </tr>
  </c:forEach>
 </table>
</body>
</html>
