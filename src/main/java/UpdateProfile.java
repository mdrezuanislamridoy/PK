


import jakarta.servlet.http.HttpSession;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.sql.*;
import king.dao.pk.ImgHelper;
import king.database.pk.ConnectionProvider;

@WebServlet(urlPatterns = {"/update_details"})
@MultipartConfig
public class UpdateProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String email = req.getParameter("upemail"); // Fix: Retrieve email from form

        try {
            Connection con = ConnectionProvider.getConnection();

            String name = req.getParameter("upname");
            String emails = req.getParameter("upemail");
            String type = req.getParameter("type"); // Fix: Retrieve type from form
            String phone = req.getParameter("upphone");
            String profession = req.getParameter("upprofession");
            String experience = req.getParameter("upexperience");
            String rate = req.getParameter("uprate");
            String totalProject = req.getParameter("uptotalProject");
            String english_level = req.getParameter("upenglish_level");
            String availability = req.getParameter("upavailability");
            String bio = req.getParameter("upbio");
            Part part = req.getPart("pimage");
            String profileImg = part.getSubmittedFileName();

            PreparedStatement ps2 = con.prepareStatement("update datas set email =?,name=?,phone=?,profession=?,experience=?,rate=?,totalProject=?,english_level=?,availability=?,bio=?,profileImg=?  where email =? ");
//            
            ps2.setString(1, emails);
            ps2.setString(2, name);
            ps2.setString(3, phone);
            ps2.setString(4, profession);
            ps2.setString(5, experience);
            ps2.setString(6, rate);
            ps2.setString(7, totalProject);
            ps2.setString(8, english_level);
            ps2.setString(9, availability);
            ps2.setString(10, bio);
            ps2.setString(11, profileImg); 
            ps2.setString(12, email); 

            int rowsAffected = ps2.executeUpdate(); // Execute the update query

            if (rowsAffected > 0) { // Check if any rows were affected
                HttpSession hs = req.getSession();
                hs.setAttribute("name", name);
                hs.setAttribute("email", emails);
                hs.setAttribute("phone", phone);
                hs.setAttribute("profession", profession);
                hs.setAttribute("experience", experience);
                hs.setAttribute("rate", rate);
                hs.setAttribute("totalProject", totalProject);
                hs.setAttribute("english_level", english_level);
                hs.setAttribute("availability", availability);
                hs.setAttribute("bio", bio);
                String oldProfile = (String) hs.getAttribute("profileImg");
                hs.setAttribute("profileImg", profileImg);
                
                String path = req.getServletContext().getRealPath("/")+"img"+File.separator+profileImg;
                String path1 = req.getServletContext().getRealPath("/")+"img"+File.separator+oldProfile;
                
                 ImgHelper.deleteFile(path1);
                 ImgHelper.saveeFile(part.getInputStream(), path);
                
                resp.sendRedirect("profile.jsp");
            } else {
            }
        } catch (Exception e) {
            e.printStackTrace(); 
        }
    }
}

