package kh.s5.nvot.product.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.jdbc.JdbcTemplate;


// Product
public class ProductImageDao {
//	insert
//	update
//	delete
//	selectList
//	selectOne
//  최소 5개 
	
//	selectList  - 목록조회 product_id 의 images
	public List<ProductImageVo> selectList(Connection conn, int product_id){
		List<ProductImageVo> volist = null;
		
		String sql = "select * from Product_Image where product_code = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				volist = new ArrayList<ProductImageVo>();
				do {
					ProductImageVo vo = new ProductImageVo();
					vo.setProduct_code(rs.getInt("product_code"));
					vo.setProduct_image_code(rs.getString("product_image_code"));
					volist.add(vo);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>> ProductImageDao selectList return : " + volist);
		return volist;
	}
	
	
}
