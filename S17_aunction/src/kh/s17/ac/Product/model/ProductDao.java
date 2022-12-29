package kh.s17.ac.Product.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.jdbc.jdbcTemplate;

public class ProductDao {

//	insert - 등록
	public int insert(Connection conn, ProductVo vo) {
		int result = 0;
		String sql ="INSERT INTO PRODUCT VALUES(?, ?, ?)";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getpID());
			pstmt.setString(2, vo.getpName());
			pstmt.setInt(3, vo.getpPrice());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			jdbcTemplate.close(pstmt);
		}
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
		String sql = "delete from board where pName=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pID);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdbcTemplate.close(pstmt);
		}
		return result;
	}
//	selectList  - 목록조회
	public List<ProductVo> selectList(Connection conn){
		List<ProductVo> volist = null;
		String sql = "select * from PRODUCT";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				volist = new ArrayList<ProductVo>();
				do {
					ProductVo vo = new ProductVo();
//					PID          NOT NULL VARCHAR2(30)   
//					PNAME        NOT NULL VARCHAR2(300)  
//					PPRICE       NOT NULL NUMBER(10)     
//					PDESCRIPTION          VARCHAR2(4000) 
//					PCOMPANY              VARCHAR2(300)  
//					PSTOCK                NUMBER         
//					PIMAGE                VARCHAR2(500)  

					vo = new ProductVo();			
					vo.setpID(rs.getString("pID"));
					vo.setpName(rs.getString("pName"));
					vo.setpPrice(rs.getInt("pPrice"));
					vo.setpDescription(rs.getString("pDescription"));
					vo.setpCompany(rs.getString("pCompany"));
					vo.setpStock(rs.getInt("pStock"));
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
	public ProductVo selectOne(Connection conn, String pID/*주로 PK*/){
		ProductVo vo = null;
		String sql = "select * from PRODUCT where  pid = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new ProductVo();
//					PID          NOT NULL VARCHAR2(30)   
//					PNAME        NOT NULL VARCHAR2(300)  
//					PPRICE       NOT NULL NUMBER(10)     
//					PDESCRIPTION          VARCHAR2(4000) 
//					PCOMPANY              VARCHAR2(300)  
//					PSTOCK                NUMBER         
//					PIMAGE                VARCHAR2(500)  
				vo = new ProductVo();			
				vo.setpID(rs.getString("pID"));
				vo.setpName(rs.getString("pName"));
				vo.setpPrice(rs.getInt("pPrice"));
				vo.setpDescription(rs.getString("pDescription"));
				vo.setpCompany(rs.getString("pCompany"));
				vo.setpStock(rs.getInt("pStock"));
				vo.setPimage(rs.getString("pimage"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdbcTemplate.close(rs);
			jdbcTemplate.close(pstmt);
		}

		return vo;
	}
}
