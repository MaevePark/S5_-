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
		
		String sql = "insert into board (board_no, board_title, board_content, board_writer, "
				+ "board_category_code)";
		sql += "VALUES ----VALUES 입력하기----"; //TODO
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getBoard_title());
			pstmt.setString(2, vo.getBoard_content());
			pstmt.setString(3, vo.getBoard_writer());
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
	public int update(Connection conn, BoardVo vo, int board_no/*주로 PK*/) {
		int result = 0;

		String sql = "update board set board_title=? board_content=? where board_no=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getBoard_title());
			pstmt.setString(2, vo.getBoard_content());
			pstmt.setInt(3, board_no);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		
		return result;
	}
//	delete  - 삭제
	public int delete(Connection conn, int board_no/*주로 PK*/) {
		int result = 0;
		
		String sql = "delete from board where board_content=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_no);
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
					vo.setBoard_no(rs.getInt("board_no"));
					vo.setBoard_title(rs.getString("board_title"));
					vo.setBoard_content(rs.getString("board_content"));
					vo.setBoard_writer(rs.getString("board_writer"));
					vo.setBoard_date(rs.getTimestamp("board_date"));
					vo.setBoard_category_code(rs.getInt("board_category_code"));
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
	public BoardVo selectOne(Connection conn, int board_no/*주로 PK*/){
		BoardVo result = null;
		String sql = "select * from board where board_no=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = new BoardVo();
				result.setBoard_no(rs.getInt("board_no"));
				result.setBoard_title(rs.getString("board_title"));
				result.setBoard_content(rs.getString("board_content"));
				result.setBoard_writer(rs.getString("board_writer"));
				result.setBoard_date(rs.getTimestamp("board_date"));
				result.setBoard_category_code(rs.getInt("board_category_code"));
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
