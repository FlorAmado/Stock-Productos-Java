package com.mycompany.proyectointegradorjava.controller;

import com.mycompany.proyectointegradorjava.dao.EmpleadoDAO;
import com.mycompany.proyectointegradorjava.dao.EmpleadoDAOImpl;
import com.mycompany.proyectointegradorjava.model.Empleado;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EmpleadoController", urlPatterns = {"/EmpleadoController"})
public class EmpleadoController extends HttpServlet {

    private EmpleadoDAO empleadoDAO;
    private List<Empleado> destacado = new ArrayList<>(); // Lista de productos destacados

    @Override
    public void init() throws ServletException {
        empleadoDAO = new EmpleadoDAOImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String opcion = request.getParameter("opcion");

        switch (opcion) {
            case "crear":
                {
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/crear.jsp");
                    requestDispatcher.forward(request, response);
                    break;
                }
            case "listar":
                {
                    List<Empleado> lista = empleadoDAO.obtenerEmpleados();
                    request.setAttribute("lista", lista);
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/listar.jsp");
                    requestDispatcher.forward(request, response);
                    break;
                }
            case "editar":
                {
                    int id = Integer.parseInt(request.getParameter("id"));
                    Empleado emp = empleadoDAO.obtenerEmpleado(id);
                    request.setAttribute("empleado", emp);
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/editar.jsp");
                    requestDispatcher.forward(request, response);
                    break;
                }
            case "eliminar":
                {
                    int id = Integer.parseInt(request.getParameter("id"));
                    empleadoDAO.eliminar(id);
                    System.out.println("Registro eliminado satisfactoriamente...");
                    response.sendRedirect(request.getContextPath() + "/index.jsp");
                    break;
                }
            case "destacar":
                {
                    int id = Integer.parseInt(request.getParameter("id"));
                    Empleado emp = empleadoDAO.obtenerEmpleado(id);

                    if (emp != null) {
                        emp.setDestacado(emp.isDestacado()); // Cambiar el estado de destacado
                        if (emp.isDestacado()) {
                            destacado.remove(emp); // Quitar de la lista de destacados
                        } else {
                            destacado.add(emp); // Agregar a la lista de destacados
                        }
                    }

                    empleadoDAO.destacar(emp); // Guardar el cambio en la base de datos
                    response.sendRedirect(request.getContextPath() + "/index.jsp");
                    break;
                }
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String opcion = request.getParameter("opcion");

        if (opcion.equals("guardar")) {
            Empleado empleado = new Empleado();
            empleado.setNombre(request.getParameter("nombre"));
            empleado.setDepartamento(request.getParameter("departamento"));
            empleadoDAO.guardar(empleado);
            System.out.println("Registro guardado satisfactoriamente...");
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } else if (opcion.equals("editar")) {
            Empleado empleado = new Empleado();
            empleado.setId(Integer.parseInt(request.getParameter("id")));
            empleado.setNombre(request.getParameter("nombre"));
            empleado.setDepartamento(request.getParameter("departamento"));
            empleado.setPrecio(Integer.parseInt(request.getParameter("precio")));
            empleado.setStock(Integer.parseInt(request.getParameter("stock")));
            empleado.setVendidos(Integer.parseInt(request.getParameter("vendidos")));

            empleadoDAO.editar(empleado);
            System.out.println("Registro editado satisfactoriamente...");
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        }
  }
}