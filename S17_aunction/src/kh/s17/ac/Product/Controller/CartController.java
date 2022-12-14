package kh.s17.ac.Product.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s17.ac.Cart.model.CartService;
import kh.s17.ac.Cart.model.CartVo;
import kh.s17.ac.member.model.MemberVo;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/cart")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberid = "";
		MemberVo membervo = (MemberVo)(request.getSession().getAttribute("loginSsInfo"));
		if(membervo != null) {
			memberid = membervo.getMemberId();
		} else {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}
		
		List<CartVo> cartlist = new CartService().selectList(memberid);
		
		request.setAttribute("cartlist", cartlist);
		String viewPath="WEB-INF/view/cart.jsp";
		request.getRequestDispatcher(viewPath).forward(request, response);
	}

}
