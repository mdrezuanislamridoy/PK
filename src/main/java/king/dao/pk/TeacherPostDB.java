package king.dao.pk;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import king.database.pk.ConnectionProvider;

@WebServlet("/TeacherPostDB")
public class TeacherPostDB extends HttpServlet {
    private static final long serialVersionUID = 1L;
  
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String type = (String) session.getAttribute("type");
        
        if (type == null) {
            // Handle the case when 'type' is null
            response.sendRedirect("login.jsp"); // Redirect to login page or handle appropriately
            return; // Exit the method
        } else if (type.equals("student") || type.equals("teacher")) {
            try {
                Connection c = ConnectionProvider.getConnection();
                PreparedStatement ps = c.prepareStatement("SELECT * FROM postdesc"); // Table name is corrected to postDesc
                ResultSet rs = ps.executeQuery();
                
                ArrayList<String> titles = new ArrayList<>();
                ArrayList<String> descriptions = new ArrayList<>();
                while (rs.next()) {
                    String title = rs.getString("title");
                    String description = rs.getString("description");
                    titles.add(title);
                    descriptions.add(description);
                }
                session.setAttribute("titles", titles); // Attribute name corrected to "titles"
                session.setAttribute("descriptions", descriptions); // Attribute name corrected to "descriptions"
                
                rs.close();
                ps.close();
                c.close();
                
                // Redirect to the JSP page where posts will be displayed
                response.sendRedirect("description.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                // Handle database connection or query errors appropriately
                // Redirect to an error page or display an error message
                response.sendRedirect("error.jsp"); // Redirect to error page or handle appropriately
            }
        } else {
            // Handle unknown 'type' value
            response.sendRedirect("error.jsp"); // Redirect to error page or handle appropriately
        }
    }
}
