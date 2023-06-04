package com.clearing.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clearing.model.Request_BoardDAO;
import com.clearing.model.admin_replyDAO;

public class replyDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int reply_seq = (int)session.getAttribute("reply_seq");
		int req_seq = (int)session.getAttribute("req_seq");
		admin_replyDAO dao = new admin_replyDAO();
		int delete = dao.delete_reply(reply_seq);
		
		if (delete > 0) {
			Request_BoardDAO uDao = new Request_BoardDAO();
			int update = uDao.update_reqTypeN(req_seq);
			System.out.println("성공");
			session.removeAttribute("reply_seq");
			response.sendRedirect("requestBoardMain.jsp");
		} else {
			System.out.println("실패");
			response.sendRedirect("requestBoardMain.jsp");
		}
	}

}
