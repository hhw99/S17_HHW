package kh.s17.ac.member.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.jdbcTemplate;

public class BusinessInfoService {
	private BusinessInfoDao dao = new BusinessInfoDao();
	
	public int insert( BusinessInfoVo vo) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		jdbcTemplate.close(conn);
		return result;
	}
	public int update(BusinessInfoVo vo, String busno) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.update(conn, vo, busno);
		jdbcTemplate.close(conn);
		return result;
	}
	public int delete(String busno) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.delete(conn, busno);
		jdbcTemplate.close(conn);
		return result;
	}
	public List<BusinessInfoVo> selectList(){
		List<BusinessInfoVo> volist = null;
		Connection conn = jdbcTemplate.getConnection();
		volist = dao.selectList(conn);
		jdbcTemplate.close(conn);
//		Statement stmt = conn.createStatement();
//		String sql = "select * from board";
//		ResultSet rs = stmt.executeQuery(sql);
//		while(rs.next());
		
		return volist;
	}
	public BusinessInfoVo selectOne(String busno) {
		BusinessInfoVo vo = null;
		Connection conn = jdbcTemplate.getConnection();
		vo = dao.selectOne(conn, busno);
		jdbcTemplate.close(conn);
		return vo;
	}

}
