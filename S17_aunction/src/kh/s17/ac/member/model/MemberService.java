package kh.s17.ac.member.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.jdbcTemplate;

public class MemberService {
	private MemberDao dao = new MemberDao();

//	insert - 등록
	public int insert(MemberVo vo) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		jdbcTemplate.close(conn);
		return result;
	}

//	update - 수정
	public int update(MemberVo vo, String memberId/* 주로 PK */) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.update(conn, vo, memberId);
		jdbcTemplate.close(conn);
		return result;
	}

//	delete  - 삭제
	public int delete(String memberId/* 주로 PK */) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.delete(conn, memberId);
		jdbcTemplate.close(conn);
		return result;
	}

//	selectList  - 목록조회
	public List<MemberVo> selectList() {
		List<MemberVo> volist = null;
		Connection conn = jdbcTemplate.getConnection();
		volist = dao.selectList(conn);
		jdbcTemplate.close(conn);
		return volist;
	}

//	selectOne - 상세조회
	public MemberVo selectOne(String memberId/* 주로 PK */) {
		MemberVo vo = null;
		Connection conn = jdbcTemplate.getConnection();
		vo = dao.selectOne(conn, memberId);
		jdbcTemplate.close(conn);
		return vo;
	}


	public MemberVo login(String memberId, String memberPassword) {
		MemberVo vo = null;
		Connection conn = jdbcTemplate.getConnection();
		vo = dao.login(conn, memberId, memberPassword);
		jdbcTemplate.close(conn);
		return vo;
	}
}
