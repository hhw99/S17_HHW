package kh.s17.ac.Cart.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.jdbcTemplate;

public class CartService {
	private CartDao dao = new CartDao();

//	insert - 등록
	public int insert(CartVo vo) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		jdbcTemplate.close(conn);
		return result;
	}

//	update - 수정
	public int update(CartVo vo, String pName/* 주로 PK */) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.update(conn, vo, pName);
		jdbcTemplate.close(conn);
		return result;
	}

//	delete  - 삭제
	public int delete(String pName/* 주로 PK */) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.delete(conn, pName);
		jdbcTemplate.close(conn);
		return result;
	}

//	selectList  - 목록조회 memberid의 장바구니 목록조회
	public List<CartVo> selectList(String memberid) {
		List<CartVo> volist = null;
		Connection conn = jdbcTemplate.getConnection();
		volist = dao.selectList(conn, memberid);
		jdbcTemplate.close(conn);
		return volist;
	}

//	selectOne - 상세조회
	public CartVo selectOne(String pName/* 주로 PK */) {
		CartVo vo = null;
		Connection conn = jdbcTemplate.getConnection();
		vo = dao.selectOne(conn, pName);
		jdbcTemplate.close(conn);
		return vo;
	}
}
