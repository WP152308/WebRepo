package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVo;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("jsp/index.jsp");	// WebClass 있다고 가정함.
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s\n", id, pwd);
		
		// id, pwd 정합성 체크
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		
		if("test@naver.com".equals(id)){
			// 세션에 사용자 정보를 생성해서 담기
			HttpSession session = request.getSession();
			
			UserVo user = new UserVo();
			user.setId(id);
			user.setName("김수민");
			
			session.setAttribute("user", user);
			
			JsonObject jo = new JsonObject();
			jo.addProperty("id", id);
			out.write(jo.toString());
			
		}		
		else{
			JsonObject jo = new JsonObject();
			jo.addProperty("msg", "error");
			out.write(jo.toString());
		}
		out.close();
	}

}
