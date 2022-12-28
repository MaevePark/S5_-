package kh.s5.nvot.product.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.jdbc.JdbcTemplate;


// Product
public class ProductDao {
//	insert
//	update
//	delete
//	selectList
//	selectOne
//  최소 5개 
	
//	insert - 등록
	public int insert(Connection conn, ProductVo vo) {
		System.out.println(">>>> ProductDao insert param : " + vo);
		int result = 0;
		
		String sql = "insert into product (product_id,	"
				+ "		product_name,product_price,product_detail) "
				+ " values ((select nvl(max(product_id),0)+1 from product),"
				+ " ? , ?, TO_CLOB(?) );";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getProduct_name());
			pstmt.setInt(2, vo.getProduct_price());
			pstmt.setString(3, vo.getProduct_detail());  // TO_CLOB(?)
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> ProductDao insert return : " + result);
		return result;
	}
	
//	update - 수정
	public int update(Connection conn, ProductVo vo, String product_id/*주로 PK*/) {
		System.out.println(">>>> ProductDao update param vo : " + vo);
		System.out.println(">>>> ProductDao update param product_id : " + product_id);
		int result = 0;
		
		String sql = "update product set product_name=? and product_price=? where product_id=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getProduct_name());
			pstmt.setInt(2, vo.getProduct_price());
			pstmt.setInt(3, vo.getProduct_id());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> ProductDao update return : " + result);
		return result;
	}
	
//	delete  - 삭제
	public int delete(Connection conn, String product_id/*주로 PK*/) {
		System.out.println(">>>> ProductDao delete param product_id : " + product_id);
		int result = 0;
		
		String sql = "delete from product where product_id=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product_id);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> ProductDao delete return : " + result);
		return result;
	}
	
//	selectList  - 목록조회
	public List<ProductVo> selectList(Connection conn){
		List<ProductVo> volist = null;
		
		String sql = "select * from product";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				volist = new ArrayList<ProductVo>();
				do {
					ProductVo vo = new ProductVo();
					vo.setProduct_id(rs.getInt("product_id"));
					vo.setProduct_detail(rs.getString("product_detail"));
					vo.setProduct_name(rs.getString("product_name"));
					vo.setProduct_price(rs.getInt("product_price"));
					volist.add(vo);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> ProductDao selectList return : " + volist);
		return volist;
	}
	
//	selectOne - 상세조회
	public ProductVo selectOne(Connection conn, String product_id/*주로 PK*/){
		System.out.println(">>>> ProductDao selectOne param product_id : " + product_id);
		ProductVo vo = null;
		
		String sql = "select * from product where product_id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new ProductVo();
				vo.setProduct_id(rs.getInt("product_id"));
				vo.setProduct_detail(rs.getString("product_detail"));
				vo.setProduct_name(rs.getString("product_name"));
				vo.setProduct_price(rs.getInt("product_price"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> ProductDao selectOne return : " + vo);
		return vo;
	}
	
}
