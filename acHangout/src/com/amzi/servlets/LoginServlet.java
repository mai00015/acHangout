package com.amzi.servlets;

import java.io.IOException;
<<<<<<< HEAD
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
=======
>>>>>>> refs/remotes/origin/Kha
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.Login;

import model.VerifyRecaptcha;

public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

        String n=request.getParameter("username");  
        String p=request.getParameter("pass"); 
        String renember= request.getParameter("renember");
        String pass = "";
        
        
        HttpSession session = request.getSession(false);
        
		response.setContentType("text/html");  
<<<<<<< HEAD
		PrintWriter out = response.getWriter();  
		
		pass = Login.validate(n, p);
		if(session != null) {
        	session.setAttribute("username", n);
        	session.setAttribute("pass", pass);
=======

		String n=request.getParameter("username");  
		String p=request.getParameter("pass"); 
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
		String pass = "";

		boolean success = VerifyRecaptcha.verify(gRecaptchaResponse);

		HttpSession session = request.getSession(false);
		
		pass = Login.validate(n, p);
		if(session!=null) {
			session.setAttribute("name", n);
			session.setAttribute("pass", pass);
>>>>>>> refs/remotes/origin/Kha
		}
<<<<<<< HEAD
		
        if(pass != ""){  
            RequestDispatcher rd=request.getRequestDispatcher("Sections/index.jsp");
            rd.forward(request,response);  
        }  
        else{  
            out.print("<p style=\"color:red; text-align:center\">Sorry username or password error</p>");  
            RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
            rd.include(request,response);  
        } 

		out.close();  
	}
=======

		if(pass != "" && success){  
			String pagename = (String) session.getAttribute("currentpage");
			if(pagename == null) {
				String message ="login";
				request.setAttribute("message", message);
				pagename = "index.jsp";
			}
			request.getRequestDispatcher(pagename).forward(request, response); 
		}  
		else{  
			String message = "";
			if(success) {
				message ="Sorry username or password error";
			}
			else {
				message ="You missed the captcha. Care to try?";
			}
			request.setAttribute("message", message);
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}   
	}  
>>>>>>> refs/remotes/origin/Kha
}

