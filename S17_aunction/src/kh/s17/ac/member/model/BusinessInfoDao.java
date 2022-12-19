package kh.s17.ac.member.model;

import java.sql.Connection;
import java.util.List;


public class BusinessInfoDao {
	public int insert(Connection conn, BusinessInfoVo vo) {
		int result = 0;
		
		return result;
	}
	public int update(Connection conn, BusinessInfoVo vo, String busno) {
		int result = 0;
		return result;
	}
	public int delete(Connection conn, String busno) {
		int result = 0;
		return result;
	}
	public List<BusinessInfoVo> selectList(Connection conn){
		List<BusinessInfoVo> volist = null;
//		Statement stmt = conn.createStatement();
//		String sql = "select * from board";
//		ResultSet rs = stmt.executeQuery(sql);
//		while(rs.next());
		
		return volist;
	}
	public BusinessInfoVo selectOne(Connection conn, String busno) {
		BusinessInfoVo vo = null;
		return vo;
	}
}
