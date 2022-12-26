package kh.s5.nvot.member.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.JdbcTemplate;

public class MemberService {
	private MemberDao dao = new MemberDao();
//	insert - 등록
	public int insert(MemberVo vo) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		JdbcTemplate.close(conn);
		return result;
	}
//	update - 수정
	public int update(MemberVo vo, String member_id/*주로 PK*/) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.update(conn, vo, member_id);
		JdbcTemplate.close(conn);
		return result;
	}
//	delete  - 삭제
	public int delete(String member_id/*주로 PK*/) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.delete(conn, member_id);
		JdbcTemplate.close(conn);	
		return result;
	}
//	selectList  - 목록조회
	public List<MemberVo> selectList(){
		List<MemberVo> volist = null;
		Connection conn = JdbcTemplate.getConnection();
		volist = dao.selectList(conn);
		JdbcTemplate.close(conn);
		return volist;
	}
//	selectOne - 상세조회
	public MemberVo selectOne(String member_id/*주로 PK*/){
		MemberVo vo = null;
		Connection conn = JdbcTemplate.getConnection();
		vo = dao.selectOne(conn, member_id);
		JdbcTemplate.close(conn);
		return vo;
	}
}
	
	
