package controller;

import model.Products;
import services.IProductServices;
import services.impl.ProductServices;
import unit.ProductNotFoundException;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = {"","/product"})
public class ProductServlet extends HttpServlet {

    private IProductServices productServices = new ProductServices();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }

        switch (action){
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            case "view":
                viewProduct(request, response);
                break;
            case "search":
                findByName(request, response);
            default:
                listProduct(request, response);
                break;
        }
    }

    private void findByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        List<Products> productsListSearch = this.productServices.findByNameProduct(search);
        RequestDispatcher dispatcher;
        if(productsListSearch.size() == 0){
            dispatcher = request.getRequestDispatcher("view/products/error404.jsp");
            request.setAttribute("error", "products not found");
        } else {
            request.setAttribute("productsListSearch", productsListSearch);
            dispatcher = request.getRequestDispatcher("view/products/list.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Products> productsList = this.productServices.findAll();
        request.setAttribute("products", productsList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/products/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void viewProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Products products = this.productServices.findById(id);
        RequestDispatcher dispatcher;
        if(products == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("products", products);
            dispatcher = request.getRequestDispatcher("view/products/view.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Products products = this.productServices.findById(id);
        RequestDispatcher requestDispatcher;
        request.setAttribute("products", products);
        if(products == null){
            requestDispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("products", products);
            requestDispatcher = request.getRequestDispatcher("view/products/delete.jsp");
        }
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/products/update.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/products/create.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":
               createProduct(request, response);
                break;
            case "edit":
                updateProduct(request, response);
                break;
            case "delete":
                deleteForm(request, response);
                break;
            case "search":
                findByName(request, response);
            default:
                listProduct(request, response);
                break;
        }
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String produce = request.getParameter("produce");
        String image = request.getParameter("image");
        RequestDispatcher requestDispatcher;
        if ((!name.equals("")) || (!price.equals("")) || (!produce.equals("")) || (!image.equals(""))){
            double prices = Double.parseDouble(price);
            productServices.update(id, name, prices, produce, image);
            requestDispatcher = request.getRequestDispatcher("view/products/update.jsp");
            request.setAttribute("message", "edit success");

        }else {
            requestDispatcher = request.getRequestDispatcher("view/products/error404.jsp");
            request.setAttribute("error", "cancel edit");
        }
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String produce = request.getParameter("produce");
        String image = request.getParameter("image");

        RequestDispatcher dispatcher;


        if ((!id.equals("")) && (!name.equals("")) && (!price.equals("")) && (!produce.equals("")) && (!image.equals(""))) {
              int id1 = Integer.parseInt(id);
              double price1 = Double.parseDouble(price);
              Products products = new Products(id1, name, price1, produce, image);
              productServices.save(products);
              dispatcher = request.getRequestDispatcher("view/products/create.jsp");
              request.setAttribute("message", "create new products success!");
        }
        else {
            dispatcher = request.getRequestDispatcher("view/products/error404.jsp");
            request.setAttribute("error", "product can not create");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/products/delete.jsp");
        int id = Integer.parseInt(request.getParameter("id"));
        productServices.remove(id);
        request.setAttribute("message", "delete success");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
