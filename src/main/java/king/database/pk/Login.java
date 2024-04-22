package king.database.pk;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/Login")
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

//        String name = req.getParameter("name");
        try {

            Connection con = ConnectionProvider.getConnection();

            PreparedStatement ps2 = con.prepareStatement("select * from datas where email =? && password=?");
            ps2.setString(1, email);
            ps2.setString(2, password);
            ResultSet rs = ps2.executeQuery();
            if (rs.next()) {

                String name = rs.getString("name");
                String emails = rs.getString("email");
                String type = rs.getString("type");
                String phone = rs.getString("phone");
                String profession = rs.getString("profession");
                String experience = rs.getString("experience");
                String rate = rs.getString("rate");
                String totalProject = rs.getString("totalProject");
                String english_level = rs.getString("english_level");
                String availability = rs.getString("availability");
                String bio = rs.getString("bio");
                String profileImg = rs.getString("profileImg");

                HttpSession hs = req.getSession();

                hs.setAttribute("name", name);
                hs.setAttribute("email", emails);
                hs.setAttribute("type", type);
                hs.setAttribute("phone", phone);
                hs.setAttribute("profession", profession);
                hs.setAttribute("experience", experience);
                hs.setAttribute("rate", rate);
                hs.setAttribute("totalProject", totalProject);
                hs.setAttribute("english_level", english_level);
                hs.setAttribute("availability", availability);
                hs.setAttribute("bio", bio);
                hs.setAttribute("profileImg", profileImg);
                
                resp.sendRedirect("profile.jsp");
            } else {
                HttpSession hs = req.getSession();
                hs.setAttribute("fail", "No Account Found,,,");
                RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
                rd.include(req, resp);
            }
        } catch (Exception e) {
            
        }
        
    }

}
