package servlet;

import model.customer.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {

    private static List<Customer> customerList = new ArrayList<>();
    private static final String IMG_MVH = "image/20220728_133027.jpg";
    private static final String IMG_NVN = "image/20220728_133031.jpg";
    private static final String IMG_NTH = "image/20220728_133035.jpg";
    private static final String IMG_TDK = "image/20220728_133037.jpg";
    private static final String IMG_NDT = "image/20220728_133040.jpg";

    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", IMG_MVH));
        customerList.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", IMG_NVN));
        customerList.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", IMG_NTH));
        customerList.add(new Customer("Trần Đăng khoa", "1983-08-17", "Hà Tây", IMG_TDK));
        customerList.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", IMG_NDT));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/list.jsp");
        request.setAttribute("customerList",customerList);
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
