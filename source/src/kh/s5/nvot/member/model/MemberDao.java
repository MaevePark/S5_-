package kh.s5.nvot.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.jdbc.JdbcTemplate;

// Member
public class MemberDao {

//	insert - 등록
	public int insert(Connection conn, MemberVo vo) {
		System.out.println(">>>> MemberDao insert param : " + vo);
		int result = 0;
		
		String sql = "insert into member (member_id, member_pwd, member_name, member_email, member_cellphone, member_tel, member_address_post, "
				+ "member_address_1, member_address_2, member_birthday, member_email_agree,member_sms_agree)" 
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMember_id());
			pstmt.setString(2, vo.getMember_pwd());
			pstmt.setString(3, vo.getMember_name());
			pstmt.setString(4, vo.getMember_email());
			pstmt.setString(5, vo.getMember_cellphone());
			pstmt.setString(6, vo.getMember_tel());
			pstmt.setString(7, vo.getMember_address_post());
			pstmt.setString(8, vo.getMember_address_1());
			pstmt.setString(9, vo.getMember_address_2());
			pstmt.setDate(10, vo.getMember_birthday());
			pstmt.setInt(11, vo.getMember_email_agree());
			pstmt.setInt(12, vo.getMember_sms_agree());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> MemberDao insert return : " + result);
		return result;
	}
	
//	update - 수정
	public int update(Connection conn, MemberVo vo, String member_id/*주로 PK*/) {
		System.out.println(">>>> MemberDao update param vo : " + vo);
		System.out.println(">>>> MemberDao update param member_id : " + member_id);
		int result = 0;
		
		String sql = "update member set member_pwd=? where member_id=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMember_pwd());
			pstmt.setString(2, vo.getMember_id());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> MemberDao update return : " + result);
		return result;
	}
	
//	delete  - 삭제
	public int delete(Connection conn, String member_id/*주로 PK*/) {
		System.out.println(">>>> MemberDao delete param member_id : " + member_id);
		int result = 0;
		
		String sql = "delete from member where member_id=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> MemberDao delete return : " + result);
		return result;
	}
	
//	selectList  - 목록조회
	public List<MemberVo> selectList(Connection conn){
		List<MemberVo> volist = null;
		
		String sql = "select * from member";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				volist = new ArrayList<MemberVo>();
				do {
					MemberVo vo = new MemberVo();
					vo.setMember_id(rs.getString("member_id"));
					vo.setMember_pwd(rs.getString("member_pwd"));
					vo.setMember_name(rs.getString("member_name"));
					vo.setMember_email(rs.getString("member_email"));
					vo.setMember_cellphone(rs.getString("member_cellphone"));
					vo.setMember_tel(rs.getString("member_tel"));
					vo.setMember_address_post(rs.getString("member_address_post"));
					vo.setMember_address_1(rs.getString("member_address_1"));
					vo.setMember_address_2(rs.getString("member_address_2"));
					vo.setMember_birthday(rs.getDate("member_birthday"));
					vo.setMember_email_agree(rs.getInt("setMember_email_agree"));
					vo.setMember_sms_agree(rs.getInt("setMember_sms_agree"));
					
					volist.add(vo);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> MemberDao selectList return : " + volist);
		return volist;
	}
	
//	selectOne - 상세조회
	public MemberVo selectOne(Connection conn, String member_id/*주로 PK*/){
		System.out.println(">>>> MemberDao selectOne param member_id : " + member_id);
		MemberVo vo = null;
		
		String sql = "select * from member where member_id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new MemberVo();
				vo.setMember_id(rs.getString("member_id"));
				vo.setMember_pwd(rs.getString("member_pwd"));
				vo.setMember_name(rs.getString("member_name"));
				vo.setMember_email(rs.getString("member_email"));
				vo.setMember_cellphone(rs.getString("member_cellphone"));
				vo.setMember_tel(rs.getString("member_tel"));
				vo.setMember_address_post(rs.getString("member_address_post"));
				vo.setMember_address_1(rs.getString("member_address_1"));
				vo.setMember_address_2(rs.getString("member_address_2"));
				vo.setMember_birthday(rs.getDate("member_birthday"));
				vo.setMember_email_agree(rs.getInt("mconsent"));
				vo.setMember_sms_agree(rs.getInt("mconsent"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> MemberDao selectOne return : " + vo);
		return vo;
	}
	
//	selectOne - login 로그인
	public MemberVo login(Connection conn, String member_id, String member_pwd){
		System.out.println(">>>> MemberDao login param member_id : " + member_id);
		System.out.println(">>>> MemberDao login param member_pwd : " + member_pwd);
		MemberVo vo = null;
		
		String sql = "select member_id,member_name from member where member_id=? and member_pwd=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			pstmt.setString(2, member_pwd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new MemberVo();
				vo.setMember_id(rs.getString("member_id"));
				vo.setMember_name(rs.getString("member_name"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> MemberDao login return : " + vo);
		return vo;
	}
}
