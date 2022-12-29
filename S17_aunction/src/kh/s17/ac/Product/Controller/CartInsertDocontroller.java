package kh.s17.ac.Product.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s17.ac.Cart.model.CartService;
import kh.s17.ac.Cart.model.CartVo;
import kh.s17.ac.member.model.MemberVo;


/**
 * Servlet implementation class CartInsertDocontroller
 */
@WebServlet("/cart.do")
public class CartInsertDocontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartInsertDocontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("여기 들어오나???????");
//		String amountStr = request.getParameter("amount"); 
		//TODO
		int amount = 1;
		
		String pID = request.getParameter("pid");
		System.out.println("####"+pID);
		
		String memberId = "";
		MemberVo membervo = (MemberVo)(request.getSession().getAttribute("loginSsInfo"));
		if(membervo != null) {
			memberId = membervo.getMemberId();
		} else {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}
		
		CartVo vo = new CartVo();
		vo.setpID(pID);
		vo.setMemberId(memberId);
		vo.setAmount(amount);
		CartService service = new CartService();
		int result = service.insert(vo);
		System.out.println("result");
		
		response.sendRedirect(request.getContextPath()+"/cart");
	}

}
