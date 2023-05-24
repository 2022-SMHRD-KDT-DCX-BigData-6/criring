package com.clearing.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clearing.model.MemberDAO;
import com.clearing.model.MemberDTO;


public class loginMember extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("sdfsdf");
		String name = request.getParameter("inputName");
		String id = request.getParameter("inputId");
		String pw = request.getParameter("inputPw");
		
		MemberDTO dto = new MemberDTO(name, id, pw);
		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.loginCheck(dto);
		
		if(member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("loginform.html");
		}
		
	}

}
