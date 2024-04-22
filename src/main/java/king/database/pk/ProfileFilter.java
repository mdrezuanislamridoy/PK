package king.database.pk;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebFilter(filterName = "Profile", urlPatterns = {"/profile.jsp","/postCourse.jsp"})
public class ProfileFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest hsr = (HttpServletRequest) request;
        HttpServletResponse hs = (HttpServletResponse) response;

        HttpSession session = hsr.getSession();
        String name = (String) session.getAttribute("name");

        if (name == null) {
            hs.sendRedirect("login.jsp");
        } else {
            chain.doFilter(request, response);
        }
    }

    public void destroy() {
    }

    public void init(FilterConfig filterConfig) {

    }

}
