<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Empleado</title>
    </head>
    <body>
        <h1>Editar Empleado</h1>
        <form action="EmpleadoController" method="post">
            <c:set var="empleado" value="${empleado}"></c:set>
                <input type="hidden" name="opcion" value="editar">
                <input type="hidden" name="id" value="${empleado.id}">
            <table border="1">
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" size="50" value="${empleado.nombre}"></td>
                </tr>
                <tr>
                    <td>Departamento</td>
                    <td><input type="text" name="departamento" size="50" value="${empleado.departamento}"></td>
                </tr>
            </table>
            <input type="submit" value="Guardar">
        </form>
    </body>
</html>