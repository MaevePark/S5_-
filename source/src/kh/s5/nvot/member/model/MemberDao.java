package kh.s5.nvot.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import common.jdbc.JdbcTemplate;


// Member
public class MemberDao {
//	insert
//	update
//	delete
//	selectList
//	selectOne
//  최소 5개 
	
//	insert - 등록
	public int insert(Connection conn, MemberVo vo) {
		System.out.println(">>>> MemberDao insert param : " + vo);
		int result = 0;
		
		String sql = "insert into member (MEMBER_ID, MEMBER_PWD, MEMBER_NAME, MEMBER_EMAIL, MEMBER_CELLPHONE, MEMBER_TEL, MEMBER_ADDRESS_POST, "
				+ "MEMBER_ADDRESS_1, MEMBER_ADDRESS_2, MEMBER_BIRTHDAY, MEMBER_EMAIL_AGREE,MEMBER_SMS_AGREE)";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMEMBER_ID());
			pstmt.setString(2, vo.getMEMBER_PWD());
			pstmt.setString(3, vo.getMEMBER_NAME());
			pstmt.setString(4, vo.getMEMBER_EMAIL());
			pstmt.setString(5, vo.getMEMBER_CELLPHONE());
			pstmt.setString(6, vo.getMEMBER_TEL());
			pstmt.setString(7, vo.getMEMBER_ADDRESS_1());
			pstmt.setString(8, vo.getMEMBER_ADDRESS_2());
			pstmt.setDate(9, vo.getMEMBER_BIRTHDAY());
			pstmt.setInt(10, vo.getMEMBER_EMAIL_AGREE());
			pstmt.setInt(11, vo.getMEMBER_SMS_AGREE());
			
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
	public int update(Connection conn, MemberVo vo, String MEMBER_ID/*주로 PK*/) {
		System.out.println(">>>> MemberDao update param vo : " + vo);
		System.out.println(">>>> MemberDao update param mid : " + MEMBER_ID);
		int result = 0;
		
		String sql = "update member set MEMBER_PWD=? where MEMBER_ID=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMEMBER_PWD());
			pstmt.setString(2, vo.getMEMBER_ID());
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
	public int delete(Connection conn, String MEMBER_ID/*주로 PK*/) {
		System.out.println(">>>> MemberDao delete param mid : " + MEMBER_ID);
		int result = 0;
		
		String sql = "delete from member where mid=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, MEMBER_ID);
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
					vo.setMid(rs.getString("mid"));
					vo.setMpw(rs.getString("mpw"));
					vo.setMname(rs.getString("mname"));
					vo.setMemail(rs.getString("memail"));
					vo.setMaddr1(rs.getString("maddr1"));
					vo.setMaddr2(rs.getString("maddr2"));
					vo.setMgender(rs.getInt("mpwd"));
					vo.setMbyear(rs.getInt("mbyear"));
					vo.setMbmonth(rs.getInt("mbmonth"));
					vo.setMbdate(rs.getInt("mbdate"));
					vo.setMconsent(rs.getInt("mconsent"));
					vo.setMentrance(rs.getTimestamp("mentrance"));
					
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
	public MemberVo selectOne(Connection conn, String MEMBER_ID/*주로 PK*/){
		MemberVo vo = null;
		return vo;
	}
//	selectOne - login - 상세조회
	public MemberVo login(Connection conn, String MEMBER_ID, String MEMBER_PWD){
		MemberVo vo = null;
		//PK로 where했으므로 단일행 결과물
		// * 속도 저하의 원인. 필요한 컬럼명을 나열함.
		String query = "select MEMBER_ID,MEMBER_PWD,mauthcode,busno,mtype from member where mid=? and mpwd=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, MEMBER_ID);
			pstmt.setString(2, MEMBER_PWD);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//PK로 where했으므로 단일행 결과물로 while문 작성하지 않음
				vo = new MemberVo();
				vo.setMEMBER_ID(rs.getString("mid"));
				vo.setMname(rs.getString("mname"));
				vo.setMauthcode(rs.getString("mauthcode"));
				vo.setMtype(rs.getInt("mtype"));
				vo.setBusno(rs.getString("busno"));
//				vo.setMid(rs.getString(1));
//				vo.setMname(rs.getString(2));
//				vo.setMauthcode(rs.getString(3));
//				vo.setMtype(rs.getInt(5));
//				vo.setBusno(rs.getString(4));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		
		
		return vo;
	}
	
	
	
	
	
}
