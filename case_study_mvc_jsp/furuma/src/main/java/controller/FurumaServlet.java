package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FurumaServlet", value = "/furuma")
public class FurumaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }

        switch (action){
            case "list_customer":
                showListCustomer(request, response);
                break;
            case "list_employee":
                showListEmployee(request, response);
                break;
            case "list_facility":
                showListFacility(request, response);
                break;
            case "list_contract":
                showListContract(request, response);
                break;
            case "create_customer":
                showCreateCustomer(request, response);
                break;
            case "create_employee":
                showCreateEmployee(request, response);
                break;
            case "create_facility":
                showCreateFacility(request, response);
                break;
            case "create_contract":
                showCreateContract(request, response);
                break;
            default:
                home(request, response);
        }
    }

    private void showFormCreatFacility(HttpServletRequest request, HttpServletResponse response) {
        String select = request.getParameter("select");
        RequestDispatcher rq = null;
        if (select.equals("villa")){
            request.setAttribute("villas", "villa nè");
            rq = request.getRequestDispatcher("view/facility/create.jsp");
        }
        if (select.equals("house")){
            request.setAttribute("houses", "house nè");
            rq = request.getRequestDispatcher("view/facility/create.jsp");
        }
        if (select.equals("room")){
            request.setAttribute("room", "room nè");
            rq = request.getRequestDispatcher("view/facility/create.jsp");
        }
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void home(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rq = request.getRequestDispatcher("index.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rq = request.getRequestDispatcher("view/customer/list.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListEmployee(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rq = request.getRequestDispatcher("view/employee/list.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListFacility(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rq = request.getRequestDispatcher("view/facility/list.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListContract(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rq = request.getRequestDispatcher("view/contract/list.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateCustomer(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rq = request.getRequestDispatcher("view/customer/create.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateEmployee(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rq = request.getRequestDispatcher("view/employee/create.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateFacility(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rq = request.getRequestDispatcher("view/facility/create.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateContract(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher rq = request.getRequestDispatcher("view/contract/create.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }

        switch (action){
            case "insert_customer":
                insertCustomer(request, response);
                break;
            case "insert_employee":
                insertEmployee(request, response);
                break;
            case "insert_facility":
                insertFacility(request, response);
                break;
            case "insert_contract":
                insertContract(request, response);
                break;
            case "select_facility":
                showFormCreatFacility(request, response);
                break;
        }
    }

    private void insertContract(HttpServletRequest request, HttpServletResponse response) {

    }

    private void insertFacility(HttpServletRequest request, HttpServletResponse response) {

    }

    private void insertEmployee(HttpServletRequest request, HttpServletResponse response) {

    }

    private void insertCustomer(HttpServletRequest request, HttpServletResponse response) {

    }
}
