package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/session")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 세션에서 사용자 정보가 들어가 있지 않으면 (null이면) login.jsp로 포워딩
		// 사용자 정보가 들어있다면 sessionInfo.jsp로 포워딩
		// sessionInfo.jsp에서는 id, name, nickname을 출력함
		if(request.getSession().getAttribute("user")==null){
			response.sendRedirect("jsp/login.jsp");	// 뒤로 보내는 방식1번째. 화면만 보낸다.
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("jsp/sessionInfo.jsp");	// WebClass 있다고 가정함.
			rd.forward(request, response);	// 뒤로 보내는 방식 2번째(포워딩). 값을 유지하며 보낸다
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
