
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
@WebServlet("/join.do")
public class JoinDoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinDoController() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String member_id = request.getParameter("memId");
		String member_pwd = request.getParameter("memPw");
		String member_name = request.getParameter("memNm");
		String member_email = request.getParameter("email");
		String member_cellphone = request.getParameter("cellPhone");
		String member_tel = request.getParameter("phone");
		String member_address_post = request.getParameter("addressPost");
		String member_address_1 = request.getParameter("address");
		String member_address_2 = request.getParameter("addressSub");
		
		
		System.out.println(">> JoinDoCtrl join param member_id :" + member_id);
		System.out.println(">> JoinDoCtrl join param member_pwd :" + member_pwd);
		
		MemberVo vo = new MemberVo();
		vo.setMember_id(member_id);
		vo.setMember_pwd(member_pwd);
		vo.setMember_name(member_name);
		vo.setMember_email(member_email);
		vo.setMember_cellphone(member_cellphone);
		vo.setMember_tel(member_tel);
		vo.setMember_tel(member_address_post);
		vo.setMember_address_1(member_address_1);
		vo.setMember_address_2(member_address_2);
		
		
		System.out.println(vo);
		
		int result = new MemberService().insert(vo);
		if (result > 0) {
			System.out.println("회원가입 성공");
			response.sendRedirect(request.getContextPath()+"/login");
		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect(request.getContextPath()+"/main");
		}
		
	}

}
