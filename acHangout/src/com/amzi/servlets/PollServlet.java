/***************************************************************************************************
 * PollServlet - To let user add new poll question
 * @since       1.0
***************************************************************************************************/
package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.PollDao;

import model.Poll;



public class PollServlet extends HttpServlet{

	private static final long serialVersionUID = 123L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException { 
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		HttpSession session = request.getSession(false);
		int fieldNum = Integer.parseInt(request.getParameter("fieldNum"));
		String question = request.getParameter("question");
		String message = null;

		Poll poll = new Poll();
		poll.setQuestion(question);
		for(int i =1;i<=fieldNum;i++) {
			poll.setOptions(request.getParameter("option"+i));
		}
		//out.println("<br>Question: "+poll.getQuestion());
		//out.println(fieldNum+" options<br>");
		//	for(Object i: poll.getOptions()) {
		//		out.println("<br>option:"+i);

		//		}




		//Call poll DAO to save object to DB
		PollDao pollDao = new PollDao();
		poll.setUserId(pollDao.getUserId((String)session.getAttribute("name")));

		if(!pollDao.submitPoll(poll)){
			message="Sorry, an error occurred!";
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
			rd.forward(request,response);
		}
		else{
			message="User registered successfully!";
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
			rd.forward(request,response);
		}

		out.close(); 

	}

}