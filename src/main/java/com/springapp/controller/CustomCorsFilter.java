package com.springapp.controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;

@Component
public class CustomCorsFilter implements Filter {
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) res;
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("Access-Control-Allow-Methods", "GET, PUT, POST, DELETE, OPTIONS");
        response.setHeader("Access-Control-Allow-Headers", "Origin, Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers");
        response.setHeader("Access-Control-Max-Age", "3600");
        System.out.println("===================gexf=================");
        chain.doFilter(req, res);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
        //Do nothing
    }
}

/* web.xml

<filter>
		<filter-name>customCorsFilter</filter-name>
		<filter-class>link.thinkonweb.controller.CustomCorsFilter</filter-class>
	</filter>
	<filter-mapping>
		<filter-name>customCorsFilter</filter-name>
		<url-pattern>/*</url-pattern>
	</filter-mapping>
	
*/