package com.mycompany.proyectointegradorjava.dao;

import com.mycompany.proyectointegradorjava.model.Empleado;
import java.util.List;
public interface EmpleadoDAO {
// guardar empleado
boolean guardar(Empleado empleado);
// editar empleado
boolean editar(Empleado empleado);
// destacar empleado
//boolean destacar(Empleado empleado);
// eliminar empleados
boolean eliminar(int idEmpleado);
// obtener lista de empleados
public List<Empleado> obtenerProductos();
// obtener empleado
Empleado obtenerProducto(int idEmpleado);

    public List<Empleado> obtenerEmpleados();

    public Empleado obtenerEmpleado(int id);
    

}