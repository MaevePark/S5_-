package kh.s5.nvot.board.model;

import java.io.BufferedReader;
import java.io.Reader;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import common.jdbc.JdbcTemplate;

public class BoardDao {
// 최소 5개 
//	insert - 등록
	public int insert(Connection conn, BoardVo vo) {
		System.out.println(">>>>BoardDao Param :"+ vo);
		int result = 0;
		
		String sql = "insert into board (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_WRITER, BOARD_CATEGORY_CODE)";
		sql += "VALUES ----todo VALUES 입력하기----";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getBOARD_TITLE());
			pstmt.setString(2, vo.getBOARD_CONTENT());
			pstmt.setString(3, vo.getBOARD_WRITER());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
			
		
		System.out.println(">>>>BoardDao Return:"+ result);
		return result;
	}
//	update - 수정
	public int update(Connection conn, BoardVo vo, int BOARD_NO/*주로 PK*/) {
		int result = 0;

		String sql = "update board set BOARD_TITLE=? BOARD_CONTENT=? where BOARD_NO=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getBOARD_TITLE());
			pstmt.setString(2, vo.getBOARD_CONTENT());
			pstmt.setInt(3, BOARD_NO);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		
		return result;
	}
//	delete  - 삭제
	public int delete(Connection conn, int BOARD_NO/*주로 PK*/) {
		int result = 0;
		
		String sql = "delete from board where BOARD_CONTENT=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, BOARD_NO);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		return result;
	}
//	selectList  - 목록조회
	public List<BoardVo> selectList(Connection conn){
		List<BoardVo> volist = null;
		
		String sql = "select * from board";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				volist = new ArrayList<BoardVo>();
				do {
					BoardVo vo = new BoardVo();
					vo = new BoardVo();
					vo.setBOARD_NO(rs.getInt("BOARD_NO"));
					vo.setBOARD_TITLE(rs.getString("BOARD_TITLE"));
					vo.setBOARD_CONTENT(rs.getString("BOARD_CONTENT"));
					vo.setBOARD_WRITER(rs.getString("BOARD_WRITER"));
					vo.setBOARD_DATE(rs.getTimestamp("BOARD_DATE"));
					vo.setBOARD_CATEGORY_CODE(rs.getInt("BOARD_CATEGORY_CODE"));
					volist.add(vo);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		
		return volist;
	}
//	selectOne - 상세조회
	public BoardVo selectOne(Connection conn, int BOARD_NO/*주로 PK*/){
		BoardVo result = null;
		String sql = "select * from board where bno=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, BOARD_NO);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = new BoardVo();
				result.setBOARD_NO(rs.getInt("BOARD_NO"));
				result.setBOARD_TITLE(rs.getString("BOARD_TITLE"));
				result.setBOARD_CONTENT(rs.getString("BOARD_CONTENT"));
				result.setBOARD_WRITER(rs.getString("BOARD_WRITER"));
				result.setBOARD_DATE(rs.getTimestamp("BOARD_DATE"));
				result.setBOARD_CATEGORY_CODE(rs.getInt("BOARD_CATEGORY_CODE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		return result;
	}

}
