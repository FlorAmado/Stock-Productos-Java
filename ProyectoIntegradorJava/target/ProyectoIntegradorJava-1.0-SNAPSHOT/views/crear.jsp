<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center text-warning">Crear Producto</h1>
        <form action="EmpleadoController" method="post">
            <input type="hidden" name="opcion" value="guardar">
            <table class="table table-bordered mt-3">
                <tr>
                    <td>Producto:</td>
                    <td><input type="text" name="nombre" class="form-control" size="50"></td>
                </tr>
                <tr>
                    <td>Marca:</td>
                    <td><input type="text" name="departamento" class="form-control" size="50"></td>
                </tr>
                <tr>
                    <td>Precio:</td>
                    <td><input type="text" name="precio" class="form-control" size="50"></td>
                </tr>
                <tr>
                    <td>Stock:</td>
                    
                    <td><input type="text"  name="stock" class="form-control" size="50"></td>
                </tr>
                <tr>
                    <td>Vendidos:</td>
                    <td><input type="text" name="vendidos" class="form-control" size="50"></td>
                </tr>
            </table>
            <button class="btn btn-warning" type="submit">Guardar</button>
        </form>
    </div>
</body>
</html>
