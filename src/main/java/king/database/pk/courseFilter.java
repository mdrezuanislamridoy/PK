package king.database.pk;
import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebFilter("/cources.jsp")
public class courseFilter implements Filter {
       

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
