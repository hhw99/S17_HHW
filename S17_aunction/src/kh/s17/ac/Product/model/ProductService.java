package kh.s17.ac.Product.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.jdbcTemplate;

public class ProductService {
	private ProductDao dao =  new ProductDao();
//	insert - 등록
	public int insert(ProductVo vo) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		jdbcTemplate.close(conn);
		return result;
	}
//	update - 수정
	public int update(ProductVo vo, String pID/*주로 PK*/) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.update(conn, vo, pID);
		jdbcTemplate.close(conn);
		return result;
	}
//	delete  - 삭제
	public int delete(String pID/*주로 PK*/) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.delete(conn, pID);
		jdbcTemplate.close(conn);	
		return result;
	}
//	selectList  - 목록조회
	public List<ProductVo> selectList(){
		List<ProductVo> volist = null;
		Connection conn = jdbcTemplate.getConnection();
		volist = dao.selectList(conn);
		jdbcTemplate.close(conn);
		return volist;
	}
//	selectOne - 상세조회
	public ProductVo selectOne(String pID/*주로 PK*/){
		ProductVo vo = null;
		Connection conn = jdbcTemplate.getConnection();
		vo = dao.selectOne(conn, pID);
		jdbcTemplate.close(conn);
		return vo;
	}
}
