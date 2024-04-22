package king.database.pk;

import jakarta.servlet.RequestDispatcher;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/Register")
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String type = req.getParameter("type");
        String phone = req.getParameter("phone");


        try {
            Connection con = ConnectionProvider.getConnection();

            PreparedStatement ps = con.prepareStatement("insert into datas(name,email,password,type,phone) values(?,?,?,?,?)");
            PreparedStatement ps2 = con.prepareStatement("select * from datas where email =?");
            ps2.setString(1, email);
            ResultSet rs = ps2.executeQuery();
            if (rs.next()) {
                HttpSession hs = req.getSession();
                hs.setAttribute("failed", "Email Already Exist,,,");
                RequestDispatcher rd = req.getRequestDispatcher("register.jsp");
                rd.include(req, resp);
            } else {

                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, password);
                ps.setString(4, type);
                ps.setString(5, phone);
                int ra = ps.executeUpdate();
                if (ra > 0) {

                    resp.sendRedirect("login.jsp");
                }
                
            }
        } catch (Exception e) {
        }
    }

}
