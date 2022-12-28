package kh.s5.nvot.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s5.nvot.product.model.ProductService;
import kh.s5.nvot.product.model.ProductVo;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/main")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService service = new ProductService();
		List<ProductVo> volist = service.selectList();
		System.out.println(volist);
		request.setAttribute("productlist", volist);
		String viewPath = "WEB-INF/view/member/index.jsp";
		request.getRequestDispatcher(viewPath).forward(request, response);
	}
}
