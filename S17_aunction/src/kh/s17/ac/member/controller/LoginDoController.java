package kh.s17.ac.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s17.ac.member.model.MemberService;
import kh.s17.ac.member.model.MemberVo;


/**
 * Servlet implementation class LoginDoController
 */
@WebServlet("/login.do")
public class LoginDoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginDoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId = request.getParameter("memberId");
		String membePassword = request.getParameter("membePassword");
		
		MemberService service = new MemberService();
		MemberVo loginInfo = service.login(memberId, membePassword);
		
			System.out.println("로그인 성공");
			request.getSession().setAttribute("loginSsInfo", loginInfo);
			response.sendRedirect(request.getContextPath()+"/main");
		
}
}
