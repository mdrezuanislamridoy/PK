package king.dao.pk;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import king.database.pk.ConnectionProvider;

@WebServlet(name = "PostDetails", urlPatterns = { "/PostDetails" })
@MultipartConfig
public class PostDetails extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String title = request.getParameter("titlepost");
			String description = request.getParameter("descriptionArea");

			Connection con;
			try {
				con = ConnectionProvider.getConnection();

				PreparedStatement ps = con.prepareStatement("INSERT INTO postdesc (title, description) VALUES (?, ?)");
				ps.setString(1, title);
				ps.setString(2, description);

				int ra = ps.executeUpdate();
				if (ra > 0) {
					response.sendRedirect("dashboard.jsp");
				} else {
					response.sendRedirect("profile.jsp"); // Redirect to profile page if insertion fails
				}

				ps.close();
				con.close();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp"); // Redirect to error page or handle appropriately
		}
	}
}
