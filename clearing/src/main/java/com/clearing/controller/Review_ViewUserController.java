package com.clearing.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clearing.model.StoreDTO;
import com.clearing.model.tbl_reviewListDAO;
import com.clearing.model.tbl_reviewListDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Review_ViewUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_email = "user01@naver.com";

		StoreDTO storeDTO = new StoreDTO();
		tbl_reviewListDAO rlDao = new tbl_reviewListDAO();

		ArrayList<tbl_reviewListDTO> userReviewList = (ArrayList<tbl_reviewListDTO>) rlDao.userReviewData(user_email);
		String store_email = userReviewList.get(0).getStore_email();

		ArrayList<StoreDTO> reviewListStoreName = (ArrayList<StoreDTO>) rlDao.selReviewStoreName(store_email);
		System.out.println(reviewListStoreName);

		request.setAttribute("reviewListStoreName", reviewListStoreName);
		request.setAttribute("userReviewList", userReviewList);

		RequestDispatcher rd = request.getRequestDispatcher("mypagereview.jsp");
		rd.forward(request, response);

		String path = request.getServletContext().getRealPath("./file");
		System.out.println("저장경로 :  " + path);

		int maxSize = 1024 * 1024 * 10;

		String encoding = "UTF-8";

		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);

		String review_content = multi.getParameter("textfield");
		int review_rating = Integer.parseInt(multi.getParameter("rating"));
		String review_photo = null;
		if (multi.getFilesystemName("file") == null) {
			review_photo = "0";
		} else {

			review_photo = multi.getFilesystemName("file");
		}
	}

}
