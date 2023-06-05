package com.clearing.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clearing.model.StoreDTO;
import com.clearing.model.tbl_reviewListDTO;
import com.clearing.model.tbl_reviewWriteDAO;
import com.clearing.model.tbl_storeDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Review_WriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double LAT = 35.1593376161019;
		double LNG = 126.843330918969;
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		tbl_storeDAO storeDAO = new tbl_storeDAO();
	    StoreDTO storeDTO = new StoreDTO();
	    storeDTO.setLAT(LAT);
	    storeDTO.setLNG(LNG);
		storeDTO = storeDAO.selStoreData(storeDTO);
		
		String storeEmail = storeDTO.getSTORE_EMAIL();
		String storeName = storeDTO.getSTORE_NAME();

		request.setAttribute("storeEmail", storeEmail);
		request.setAttribute("storeName", storeName);
		
		
		
					String path = request.getServletContext().getRealPath("./file");
					System.out.println("저장경로 :  " + path);
					
					int maxSize = 1024*1024*10; // 10mb
					
					String encoding = "UTF-8";
					
					DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
					MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		
		String review_content = multi.getParameter("textfield");
		int review_rating =Integer.parseInt(multi.getParameter("rating"));
		String review_photo=null;
		if(multi.getFilesystemName("file")==null) {
			review_photo = "0";
		}else {
			
			review_photo = multi.getFilesystemName("file");
		}
			
		
		tbl_reviewWriteDAO reviewWriteDAO= new tbl_reviewWriteDAO();
		tbl_reviewListDTO reviewDTO = new tbl_reviewListDTO();
		

		System.out.println("리뷰 내용" + review_content);
		System.out.println("별점 : " + (review_rating));
		
		
		reviewDTO.setStore_email(storeEmail);
		reviewDTO.setReview_content(review_content);
		reviewDTO.setUser_email(email);
		reviewDTO.setReview_rating(review_rating);
		reviewDTO.setReview_photo(review_photo);
		int result = reviewWriteDAO.insReviewData(reviewDTO);
		System.out.println(result);
		if (result>0) {
			System.out.println("리뷰 등록 성공");
			RequestDispatcher rd =request.getRequestDispatcher("UseList.jsp");
			rd.forward(request, response);
			
		} else {
			System.out.println("리뷰 등록 실패");
			response.sendRedirect("index.jsp");

		}
	}

}
