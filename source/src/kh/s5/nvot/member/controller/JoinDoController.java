
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
		String member_id = request.getParameter("memId"); // 회원가입 페이지에서 입력한 아이디 받기
		String member_pwd = request.getParameter("memPw"); // 회원가입 페이지에서 입력한 비밀번호 받기
		String member_name = request.getParameter("memNm");  // 회원가입 페이지에서 입력한 이름 받기
		String member_email = request.getParameter("email"); // 회원가입 페이지에서 입력한 이메일 받기
		String member_cellphone = request.getParameter("cellPhone"); // 회원가입 페이지에서 입력한 휴대폰번호 받기
		String member_tel = request.getParameter("phone"); // 회원가입 페이지에서 입력한 전화번호 받기
		String member_address_post = request.getParameter("addressPost"); // 회원가입 페이지에서 입력한 우편번호 받기
		String member_address_1 = request.getParameter("address");  // 회원가입 페이지에서 입력한 주소1 받기
		String member_address_2 = request.getParameter("addressSub"); // 회원가입 페이지에서 입력한 주소2 받기		
		
		System.out.println(">> JoinDoCtrl join param member_id :" + member_id);
		System.out.println(">> JoinDoCtrl join param member_pwd :" + member_pwd);
		System.out.println(">> JoinDoCtrl join param member_pwd :" + member_name);
		System.out.println(">> JoinDoCtrl join param member_pwd :" + member_email);
		System.out.println(">> JoinDoCtrl join param member_pwd :" + member_cellphone);
		System.out.println(">> JoinDoCtrl join param member_pwd :" + member_tel);
		System.out.println(">> JoinDoCtrl join param member_pwd :" + member_address_post);
		System.out.println(">> JoinDoCtrl join param member_pwd :" + member_address_1);
		System.out.println(">> JoinDoCtrl join param member_pwd :" + member_address_2);
		
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
