package com.clearing.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clearing.model.admin_replyDAO;
import com.clearing.model.admin_replyDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class replyUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String path = request.getServletContext().getRealPath("");
		System.out.println("저장 경로 ㅇㄷ? : " + path);
		int maxSize = 1024 * 1024 * 10; // 10MB
		
		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		
		int reply_seq = (int)session.getAttribute("reply_seq");
		System.out.println("이거 숫자 몇 : " + reply_seq);
		String reply_content = multi.getParameter("reply_content");
		String reply_photo = multi.getFilesystemName("reply_photo");
		
		System.out.println("내용 : " + reply_content);
		System.out.println("파일 : " + reply_photo);
		
		
		admin_replyDTO dto = new admin_replyDTO();
		admin_replyDAO dao = new admin_replyDAO();
		dto.setReplyContent(reply_content);
		dto.setReplyPhoto(reply_photo);;
		dto.setReplySeq(reply_seq);
		
		int update = dao.update_reply(dto);
		if (update > 0) {
			System.out.println("수정완");
			response.sendRedirect("requestBoardMain.jsp");
		} else {
			System.out.println("수정실패");
			response.sendRedirect("requestBoardMain.jsp");
		}
		
	}

}
