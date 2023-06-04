package com.clearing.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clearing.model.Request_BoardDAO;
import com.clearing.model.Request_BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class reqBoardUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		String path = request.getServletContext().getRealPath("");
		System.out.println("저장 경로 ㅇㄷ? : " + path);
		int maxSize = 1024 * 1024 * 10; // 10MB
		
		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		
		/*
		 * try { multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		 * } catch (Exception e) { e.printStackTrace(); }
		 */
		
		String req_title = multi.getParameter("req_title");
		String req_file = multi.getFilesystemName("req_file");
		String req_content = multi.getParameter("req_content");
		
		System.out.println("제목 : " + req_title);
		System.out.println("파일 : " + req_file);
		System.out.println("내용 : " + req_content);
		
		 int req_seq = (int)session.getAttribute("req_seq");
		 
		Request_BoardDTO dto = new Request_BoardDTO();
		Request_BoardDAO dao = new Request_BoardDAO();
		
		dto.setReqSeq(req_seq);
		dto.setReqTitle(req_title);
		dto.setReqFile(req_file);
		dto.setReqContent(req_content);
		int update = dao.update_req(dto);
		if (update > 0) {
			System.out.println("수정완");
			response.sendRedirect("requestBoardMain.jsp");
		} else {
			System.out.println("수정실패");
			response.sendRedirect("requestBoardMain.jsp");
		}
		
	}

}
