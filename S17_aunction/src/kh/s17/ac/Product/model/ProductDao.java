package kh.s17.ac.Product.model;

import java.sql.Connection;
import java.util.List;

public class ProductDao {

//	insert - 등록
	public int insert(Connection conn, ProductVo vo) {
		int result = 0;
		return result;
	}
//	update - 수정
	public int update(Connection conn, ProductVo vo, String pID/*주로 PK*/) {
		int result = 0;
		return result;
	}
//	delete  - 삭제
	public int delete(Connection conn, String pID/*주로 PK*/) {
		int result = 0;
		return result;
	}
//	selectList  - 목록조회
	public List<ProductVo> selectList(Connection conn){
		List<ProductVo> volist = null;

		return volist;
	}
//	selectOne - 상세조회
	public ProductVo selectOne(Connection conn, String pID/*주로 PK*/){
		ProductVo vo = null;
		return vo;
	}
}
