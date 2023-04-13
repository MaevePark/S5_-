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
		ProductService service = new ProductService(); // 객체 생성
		List<ProductVo> volist = service.selectList(); // productVo 객체들이 담긴 List 를 가져옴
		System.out.println(volist);
		request.setAttribute("productlist", volist); // 상품리스트이름으로 request 객체에 List 저장
		String viewPath = "WEB-INF/view/index.jsp"; // 메인페이지에 뷰 페이지로 전달
		request.getRequestDispatcher(viewPath).forward(request, response); // forward 메소드로 request 객체와 response 객체를 파라미터로 전달
	}
}
