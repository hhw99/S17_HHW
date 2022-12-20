package kh.s17.ac.Cart.model;

import java.sql.Connection;
import java.util.List;

public class CartDao {
//	insert - 등록
	public int insert(Connection conn, CartVo vo) {
		int result = 0;
		return result;
	}
//	update - 수정
	public int update(Connection conn, CartVo vo, String pName/*주로 PK*/) {
		int result = 0;
		return result;
	}
//	delete  - 삭제
	public int delete(Connection conn, String pName/*주로 PK*/) {
		int result = 0;
		return result;
	}
//	selectList  - 목록조회
	public List<CartVo> selectList(Connection conn){
		List<CartVo> volist = null;

		return volist;
	}
//	selectOne - 상세조회
	public CartVo selectOne(Connection conn, String pName/*주로 PK*/){
		CartVo vo = null;
		return vo;
	}
}

