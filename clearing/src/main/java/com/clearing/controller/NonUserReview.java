package com.clearing.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clearing.model.StoreDAO;
import com.clearing.model.StoreVO;

/**
 * Servlet implementation class NonUserReview
 */
public class NonUserReview extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		StoreDAO sDao = new StoreDAO();
		ArrayList<StoreVO> noReviewList= (ArrayList<StoreVO>)sDao.storeN();
		
		ArrayList<StoreVO> storeReviewList = (ArrayList<StoreVO>)sDao.storeReviewNum();
		ArrayList<StoreVO> emptyList = new ArrayList<StoreVO>();
		int num = noReviewList.size()+storeReviewList.size();
		request.setAttribute("ListSize", num);
		if(storeReviewList.size()<10) {
			request.setAttribute("storeReviewList", storeReviewList);
			for(int i=0;i<10-(storeReviewList.size());i++) {
				emptyList.add(i, noReviewList.get(i));
				request.setAttribute("noReviewList", emptyList);
				
			}
		}else {
			/*
			 * for(int i=0;i<10;i++) { emptyList.set(i, storeReviewList.get(i));
			 * request.setAttribute("storeReviewList", emptyList);
			 * 
			 * }
			 */
		}
		
		//request.setAttribute("noReviewList", noReviewList);
		RequestDispatcher rd = request.getRequestDispatcher("ReviewMain2.jsp");
		rd.forward(request, response);
	
	
	
	
	
	}

}
