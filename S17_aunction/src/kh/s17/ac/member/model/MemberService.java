package kh.s17.ac.member.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.jdbcTemplate;

public class MemberService {
	private MemberDao dao = new MemberDao();

	public int insert(MemberVo vo) {
		int result = 0;

		return result;
	}

	public int update(MemberVo vo, String mid) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		jdbcTemplate.close(conn);
		return result;
	}

	public int delete(String mid) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.delete(conn, mid);
		jdbcTemplate.close(conn);
		return result;
	}

	public List<MemberVo> selectList() {
		List<MemberVo> volist = null;
		Connection conn = jdbcTemplate.getConnection();
		volist = dao.selectList(conn);
		jdbcTemplate.close(conn);
//		Statement stmt = conn.createStatement();
//		String sql = "select * from board";
//		ResultSet rs = stmt.executeQuery(sql);
//		while(rs.next());

		return volist;
	}

	public MemberVo selectOne(String mid) {
		MemberVo vo = null;
		Connection conn = jdbcTemplate.getConnection();
		vo = dao.selectOne(conn, mid);
		jdbcTemplate.close(conn);
		return vo;
	}
	public MemberVo login(String mid, String mpwd) {
		MemberVo vo = null;
		Connection conn = jdbcTemplate.getConnection();
		vo = dao.login(conn, mid, mpwd);
		jdbcTemplate.close(conn);
		return vo;
	}
}
