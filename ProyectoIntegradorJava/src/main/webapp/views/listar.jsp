<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Productos</title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-5">
            <a href="/ProyectoIntegradorJava/index.jsp" class="btn btn-outline-secondary">← Inicio</a>
            <a class="btn btn-success" href="EmpleadoController?opcion=crear">Crear un Producto</a>
            <h1 class="text-center text-success">Lista de Productos</h1>
            <table border="1" class="table table-bordered table-striped mt-3">
                <tr>
                    <td>Codigo</td>
                    <td>Producto</td>
                    <td>Marca</td>
                    <td>Precio</td>
                    <td>Stock</td>
                    <td>Vendidos</td>
                    <td>Acción</td>
                </tr>
                <c:forEach var="empleado" items="${lista}">
                    <tr>
                        <td><c:out value="${empleado.id}"></c:out></td>
                        
                        <td><c:out value="${empleado.nombre}"></c:out></td>
                        
                        <td><c:out value="${empleado.departamento}"></c:out></td>

                        <td><c:out value="${empleado.precio}"></c:out></td>

                        <td><c:out value="${empleado.stock}"></c:out></td>
                        
                        <td><c:out value="${empleado.vendidos}"></c:out></td>

                        
                        <td class="text-center">
                            <a class="btn btn-outline-dark" href="EmpleadoController?opcion=destacar&id=<c:out value="${empleado.id}"></c:out>">
                                Destacar
                            </a>
                            <a class="btn btn-primary" href="EmpleadoController?opcion=editar&id=<c:out value="${empleado.id}"></c:out>">
                                Editar
                            </a>
                            <a class="btn btn-danger" href="EmpleadoController?opcion=eliminar&id=<c:out value="${empleado.id}"></c:out>">
                                Eliminar
                            </a>

                        </td>
                    </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>