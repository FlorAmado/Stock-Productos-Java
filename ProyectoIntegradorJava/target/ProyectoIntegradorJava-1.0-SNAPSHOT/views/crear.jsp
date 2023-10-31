<!DOCTYPE html>
<html>
<head>
    <!-- Agregar la referencia a Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center text-warning">Crear Empleado</h1>
        <form action="EmpleadoController" method="post">
            <input type="hidden" name="opcion" value="guardar">
            <table class="table table-bordered mt-3">
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" class="form-control" size="50"></td>
                </tr>
                <tr>
                    <td>Departamento:</td>
                    <td><input type="text" name="departamento" class="form-control" size="50"></td>
                </tr>
            </table>
            <button class="btn btn-warning" type="submit">Guardar</button>
        </form>
    </div>
</body>
</html>
