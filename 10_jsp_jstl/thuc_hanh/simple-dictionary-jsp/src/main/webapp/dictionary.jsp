
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %>

<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <%
        Map<String, String> dic = new HashMap<>();
    %>

    <%
        dic.put("hello", "xin chao");
        dic.put("how", "the nao");
        dic.put("book", "quyen vo");
        dic.put("computer", "may tinh");
        dic.put("start", "bat dau");

        PrintWriter pw = response.getWriter();

        String search = request.getParameter("search");

        String result = dic.get(search);

        if(result != null){
            pw.println("words:" + search);
            pw.println("<br>");
            pw.println("result:" + result);
        }
        else {
            pw.println("not found");
        }
    %>
</body>
</html>
