import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "DiscountServlet ", value = "/Discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float price = Float.parseFloat(request.getParameter("price"));
        float percent = Float.parseFloat(request.getParameter("Discount_Percent"));

        float discountAmount = price * percent * 0.01f;
        float discountPrice = price - discountAmount;

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        request.setAttribute("discountAmount",discountAmount);
        request.setAttribute("discountPrice",discountPrice);
        requestDispatcher.forward(request,response);

//        PrintWriter printWriter = response.getWriter();
//        printWriter.println("<html>");
//        printWriter.println("<h1> Discount Amount: " + discount_Amount +"</h1>");
//        printWriter.println("<h1> Discount price: " + discount_price +"</h1>");
//        printWriter.println("</html>");
    }
}
