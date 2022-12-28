package kh.s5.nvot.product.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.JdbcTemplate;

public class ProductService {
	private ProductDao dao = new ProductDao();
	private ProductImageDao daoImage = new ProductImageDao();
	
//	insert - 등록
	public int insert(ProductVo vo) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		JdbcTemplate.close(conn);
		return result;
	}
//	update - 수정
	public int update(ProductVo vo, String product_id/*주로 PK*/) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.update(conn, vo, product_id);
		JdbcTemplate.close(conn);
		return result;
	}
//	delete  - 삭제
	public int delete(String product_id/*주로 PK*/) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.delete(conn, product_id);
		JdbcTemplate.close(conn);	
		return result;
	}
//	selectList  - 목록조회
	public List<ProductVo> selectList(){
		List<ProductVo> volist = null;
		Connection conn = JdbcTemplate.getConnection();
		volist = dao.selectList(conn);
		if(volist != null) {
			for(int i=0; i<volist.size(); i++) {
				 volist.get(i).setProduct_image_list(daoImage.selectList(conn, volist.get(i).getProduct_id()));
			}
		}
		JdbcTemplate.close(conn);
		return volist;
	}
//	selectOne - 상세조회
	public ProductVo selectOne(String product_id/*주로 PK*/){
		ProductVo vo = null;
		Connection conn = JdbcTemplate.getConnection();
		vo = dao.selectOne(conn, product_id);
		if(vo != null) {
			vo.setProduct_image_list(daoImage.selectList(conn, vo.getProduct_id()));
		}
		JdbcTemplate.close(conn);
		return vo;
	}
}
	
	
