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
		String sql ="INSERT INTO CART (Amount, pid, memberid ) VALUES(?, ?, ?)";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getAmount());
			pstmt.setString(2, vo.getpID());
			pstmt.setString(3, vo.getMemberId());

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
//	selectList  - 목록조회 memberid의 장바구니의 상품을 봄
	public List<CartVo> selectList(Connection conn, String memberid){
		List<CartVo> volist = null;
		String sql = "select * from (select * from CART where memberid=?) JOIN PRODUCT USING (PID)";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				volist = new ArrayList<CartVo>();
				do {
					CartVo vo = new CartVo();
					vo = new CartVo();
					vo.setpName(rs.getString("pName"));
					vo.setAmount(rs.getInt("amount"));
					vo.setPrice(rs.getInt("pprice"));
					vo.setpID(rs.getString("pID"));
					vo.setPimage(rs.getString("pimage"));
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

