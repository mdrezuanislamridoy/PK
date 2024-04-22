
package king.dao.pk;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "Profilebody2", urlPatterns = {"/TeacherProfile.jsp"})
public class ProfileBody2 implements Filter{

    @Override
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
        
        HttpServletResponse resp = (HttpServletResponse) sr1;
        HttpServletRequest hsr = (HttpServletRequest) sr;
        HttpSession session = hsr.getSession();
        String type = (String) session.getAttribute("type");

             if (type==null) {
                resp.sendRedirect("profile.jsp");
            }else{
                fc.doFilter(sr, sr1);
            }
    }
    
}
