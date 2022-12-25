package kh.s17.ac.Cart.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.jdbc.jdbcTemplate;

public class CartDao {
//	insert - 등록
	public int insert(Connection conn, CartVo vo) {
		int result = 0;
		String sql ="INSERT INTO CART VALUES(?, ?, ?)";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getpName());
			pstmt.setInt(2, vo.getAmount());
			pstmt.setInt(3, vo.getPrice());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			jdbcTemplate.close(pstmt);
		}
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
		String sql = "delete from board where pName=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pName);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdbcTemplate.close(pstmt);
		}
		return result;
	}
//	selectList  - 목록조회
	public List<CartVo> selectList(Connection conn){
		List<CartVo> volist = null;
		String sql = "select * from board";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				volist = new ArrayList<CartVo>();
				do {
					CartVo vo = new CartVo();
					vo = new CartVo();
					vo.setpName(rs.getString("pName"));
					vo.setAmount(rs.getInt("amount"));
					vo.setPrice(rs.getInt("price"));
					vo.setpID(rs.getString("pID"));
					volist.add(vo);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdbcTemplate.close(rs);
			jdbcTemplate.close(pstmt);
		}

		return volist;
	}
//	selectOne - 상세조회
	public CartVo selectOne(Connection conn, String pName/*주로 PK*/){
		CartVo vo = null;
		return vo;
	}
}

