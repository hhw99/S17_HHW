package kh.s17.ac.Product.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s17.ac.Product.model.ProductService;
import kh.s17.ac.Product.model.ProductVo;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/product")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		System.out.println("상품번호:"+ pid);
		
		ProductVo vo = new ProductService().selectOne(pid);
		
		request.setAttribute("product", vo);
		String viewPath="WEB-INF/view/product.jsp";
		request.getRequestDispatcher(viewPath).forward(request, response);
	}


	

}
