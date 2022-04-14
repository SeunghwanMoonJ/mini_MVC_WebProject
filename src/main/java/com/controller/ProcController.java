package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.dto.DataDto;
import com.dto.mDto;
import com.service.DataService;

@WebServlet({ "/dInput", "/outList", "/dOutput", "/dSear", "/mini_dSear", "/dUpdate", "/updateProc", "/dDelete", "/register", "/mini_outList", "/mini_outputData", "/logout" })
public class ProcController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DataService dServ = new DataService();
	
	//메시지 전송에 세션활용
	private HttpSession session;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	private void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(session == null) {
			session = request.getSession();
		}
		
		String command = request.getServletPath();
		System.out.println("command : " + command);
		
		String message = null;
		RequestDispatcher rd = null;
		DataDto data = null;
		mDto mdata = null; // ***로그인 관련
		int code = -1;//검색, 수정, 삭제용 코드 저장 변수
		boolean redir = false;//redirect(true), forward(false)
		String url = null;//이동할 페이지의 주소 저장 변수
		
		switch(command) {
		case "/dInput":
			data = (DataDto)request.getAttribute("data");
			System.out.println("입력날짜 :" + data.getC_date());
			message = dServ.insertData(data);
			redir = true;
			url = "./index.jsp";//첫페이지로 이동하는 주소 값.
			break;
		case "/outList":
			List<DataDto> dl = dServ.getList();
			request.setAttribute("dList", dl);
			url = "./outputList.jsp";
			redir = false;
			break;
		case "/mini_outList":
			List<DataDto> dl2 = dServ.getList();
			request.setAttribute("dList", dl2);
			url = "./mini_outputList.jsp";
			redir = false;
			break;
		case "/dOutput":
			code = Integer.parseInt(request.getParameter("c_no"));
			data = dServ.getChartno(code); 
			url = "./outputData.jsp";
			request.setAttribute("resData", data);
			redir = false;
			break;
		case "/mini_outputData":
			code = Integer.parseInt(request.getParameter("c_no"));
			data = dServ.getChartno(code);
			url = "./mini_outputData.jsp";
			request.setAttribute("resData", data);
			redir = false;
			break;
		case "/dSear":
			code = Integer.parseInt(request.getParameter("c_no"));
			data = dServ.getChartno(code);
			url = "./outputData.jsp";
			request.setAttribute("resData", data);
			redir = false;
			break;
		case "/mini_dSear":
			code = Integer.parseInt(request.getParameter("c_no"));
			data = dServ.getChartno(code);
			url = "./mini_outputData.jsp";
			request.setAttribute("resData", data);
			redir = false;
			break;
		case "/dUpdate"://수정데이터를 불러오기위한 검색
			code = Integer.parseInt(request.getParameter("c_no"));
			data = dServ.getChartno(code);
			url = "./updateFrm.jsp";
			request.setAttribute("upData", data);
			redir = false;
			break;
		case "/updateProc"://수정된 데이터를 DB에 처리
			data = (DataDto)request.getAttribute("data");
			message = dServ.updateData(data);
			url = "./index.jsp";
			redir = true;
			break;
		case "/dDelete":
			code = Integer.parseInt(request.getParameter("c_no"));
			message = dServ.deleteData(code);
			url = "./index.jsp";
			redir = true;
			break;
		case "/register":
			mdata = (mDto)request.getAttribute("mdata");
			System.out.println("회원 이름 :" + mdata.getName());
			message = dServ.insertid(mdata);
			redir = true;
			url = "./first_login.jsp";//첫페이지로 이동하는 주소 값.
			break;
		case "/logout":
			session.removeAttribute("adminid");
			session.removeAttribute("ids");
			message = "로그아웃 했습니다.";
			redir = true;
			url = "./first_login.jsp";
			break;
		}//switch end
		
		if(redir) {
			//redirect
			//출력할 메시지를 session에 저장
			session.setAttribute("msg", message);
			//전환될 페이지 지정.(이 프로젝트에서 모든 redirect는 첫페이지로)
			response.sendRedirect(url);
		}
		else {
			//forward
			rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
	}//doProc end

}//class end
