package kh.s17.ac.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import common.jdbc.jdbcTemplate;



public class MemberDao {
	public int insert(Connection conn, MemberVo vo) {
		int result = 0;
		
		return result;
	}
	public int update(Connection conn, MemberVo vo, String mid) {
		int result = 0;
		return result;
	}
	public int delete(Connection conn, String mid) {
		int result = 0;
		return result;
	}
	public List<MemberVo> selectList(Connection conn){
		List<MemberVo> volist = null;
//		Statement stmt = conn.createStatement();
//		String sql = "select * from board";
//		ResultSet rs = stmt.executeQuery(sql);
//		while(rs.next());
		
		return volist;
	}
	public MemberVo selectOne(Connection conn, String mid) {
		MemberVo vo = null;
		return vo;
	}
	public MemberVo login(Connection conn, String mid, String mpwd) {
		MemberVo vo = null;
		String query = "select mid,mname,mauthcode,mtype,busno from member where mid=? and mpwd=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpwd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new MemberVo();
				vo.setMid(rs.getString("mid"));
				vo.setMname(rs.getString("mname"));
				vo.setMauthcode(rs.getString("mauthcode"));
				vo.setMtype(rs.getInt("mtype"));
				vo.setBusno(rs.getString("busno"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			jdbcTemplate.close(rs);
			jdbcTemplate.close(pstmt);
		}
		
		
		
		
		
		return vo;
	}

}
