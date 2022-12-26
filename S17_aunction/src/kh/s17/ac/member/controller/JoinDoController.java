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
 * Servlet implementation class JoinDoController
 */
@WebServlet("/join.do")
public class JoinDoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinDoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId = request.getParameter("id");
		String memberName = request.getParameter("user_name");
		String memberPassword = request.getParameter("pw");
		String memberEmail = request.getParameter("email");
		MemberVo vo = new MemberVo();
		vo.setMemberName(memberName);
		vo.setMemberId(memberId);
		vo.setMemberPassword(memberPassword);
		vo.setMemberEmail(memberEmail);

		System.out.println(vo);
		int result = new MemberService().insert(vo);
		if (result>0) {
			System.out.println("회원가입 성공");
			response.sendRedirect(request.getContextPath()+"/login");
		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect(request.getContextPath()+"/main");
		}

	}


	}


