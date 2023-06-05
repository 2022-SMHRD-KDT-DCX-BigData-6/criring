package com.clearing.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clearing.model.Request_BoardDAO;
import com.clearing.model.Request_BoardDTO;
import com.clearing.model.admin_replyDAO;
import com.clearing.model.admin_replyDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class replyInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String path = request.getServletContext().getRealPath("./file");
		System.out.println("저장 경로 ㅇㄷ? : " + path);
		int maxSize = 1024 * 1024 * 10; // 10MB
		
		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = null;
		
		try {
			multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		} catch (Exception e) {
			e.printStackTrace();
		}
		int req_seq = (int)session.getAttribute("req_seq");
		String admin_id = (String)session.getAttribute("email");
		String reply_content = multi.getParameter("reply_content");
		String reply_photo = multi.getFilesystemName("reply_photo");
		
		System.out.println("문의넘버 : " + req_seq);
		System.out.println("작성자 : " + admin_id);
		System.out.println("내용 : " + reply_content);
		System.out.println("파일 : " + reply_photo);
		
		admin_replyDTO dto = new admin_replyDTO();
		admin_replyDAO dao = new admin_replyDAO();
		dto.setReqSeq(req_seq);
		dto.setAdminId(admin_id);
		dto.setReplyContent(reply_content);
		dto.setReplyPhoto(reply_photo);
		
		int insert = dao.insert_reply(dto);
		if (insert > 0) {
			Request_BoardDAO uDao = new Request_BoardDAO();
			int update = uDao.update_reqTypeY(req_seq);
			System.out.println("성공");
			response.sendRedirect("requestBoardMain.jsp");
		} else {
			System.out.println("실패");
			response.sendRedirect("requestBoardMain.jsp");
		}
	}

}
