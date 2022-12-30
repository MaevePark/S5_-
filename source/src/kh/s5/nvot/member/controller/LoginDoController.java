package kh.s5.nvot.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s5.nvot.member.model.MemberService;
import kh.s5.nvot.member.model.MemberVo;


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
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String member_id = request.getParameter("loginId"); //login.jsp 85번 
		String member_pwd = request.getParameter("loginPwd");
		System.out.println(">> LoginDoCtrl login param member_id :" + member_id);
		System.out.println(">> LoginDoCtrl login param member_pwd :" + member_pwd);
		MemberService service = new MemberService();
		MemberVo loginInfo = service.login(member_id, member_pwd);
		
		if(loginInfo !=null) {
			System.out.println("로그인 성공");
			request.getSession().setAttribute("loginSsInfo", loginInfo);
			response.sendRedirect(request.getContextPath()+"/main");
		} else {
			System.out.println("로그인 실패");
			response.sendRedirect(request.getContextPath()+"/login");		
		} 
		
	}

}












