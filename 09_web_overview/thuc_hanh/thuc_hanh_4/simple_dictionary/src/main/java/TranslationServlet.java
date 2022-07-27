import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "TranslationServlet ", urlPatterns = {"/translate"})
public class TranslationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "xin chào");
        dictionary.put("how", "thế nào");
        dictionary.put("book", "quyển vở");
        dictionary.put("computer", "máy tính");
        dictionary.put("good", "tốt");

        String search = request.getParameter("txtSearch");

        String result = dictionary.get(search);

        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        if (result != null){
            printWriter.println("<h1>" + search + ":" + result + "</h1>");
        }
        else {
            printWriter.println("<h1>not found</h1>");
        }
        printWriter.println("</html>");
    }
}
