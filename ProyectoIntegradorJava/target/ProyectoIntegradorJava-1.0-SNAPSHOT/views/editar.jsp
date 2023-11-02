<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Editar Producto</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center text-success">Editar Producto</h1>
        <a href="/ProyectoIntegradorJava/index.jsp" class="btn btn-outline-secondary">← Inicio</a>
        <form action="EmpleadoController" method="post">
            <c:set var="empleado" value="${empleado}"></c:set>
            <input type="hidden" name="opcion" value="editar">
            <input type="hidden" name="id" value="${empleado.id}">
            <table class="table table-bordered mt-3">
                <tr>
                    <td>Producto:</td>
                    <td><input type="text" name="nombre" class="form-control" size="50" value="${empleado.nombre}"></td>
                </tr>
                <tr>
                    <td>Marca:</td>
                    <td><input type="text" name="departamento" class="form-control" size="50" value="${empleado.departamento}"></td>
                </tr>
                 
                <tr>
                    <td>Precio:</td>
                    <td><input type="text" name="precio" class="form-control" size="50" value="${empleado.precio}"></td>
                </tr>
                <tr>
                    <td>Stock:</td>
                    <td><input type="text" name="stock" class="form-control" size="50" value="${empleado.stock}"></td>
                </tr>
                <tr>
                    <td>Vendidos:</td>
                    <td><input type="text" name="vendidos" class="form-control" size="50" value="${empleado.vendidos}"></td>
                </tr>
                
            </table>
            <button class="btn btn-success green-bg" type="submit">Guardar</button>
        </form>
    </div>
</body>
</html>
