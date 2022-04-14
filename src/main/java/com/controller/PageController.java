package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;


//이 서블릿(컨트롤러)은 페이지 전환용 서블릿!
@WebServlet({ "/index", "/inputFrm", "/updateFrm", "/searchFrm", "/deleteFrm", "/loginFrm", "/first_login",  "/mini_searchFrm"})
public class PageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String command = request.getServletPath();
		
		System.out.println("command : " + command);//로그
		String url = "." + command + ".jsp";
		
		response.sendRedirect(url);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//비워둠.
	}

}
