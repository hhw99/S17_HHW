package kh.s17.ac.mypage.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.jdbcTemplate;

public class MypageService {
	private MypageDao dao = new MypageDao();
//	insert - 등록
	public int insert(MypageVo vo) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		jdbcTemplate.close(conn);
		return result;
	}
//	update - 수정
	public int update(MypageVo vo, String field/*주로 PK*/) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.update(conn, vo, field);
		jdbcTemplate.close(conn);
		return result;
	}
//	delete  - 삭제
	public int delete(String field/*주로 PK*/) {
		int result = 0;
		Connection conn = jdbcTemplate.getConnection();
		result = dao.delete(conn, field);
		jdbcTemplate.close(conn);	
		return result;
	}
//	selectList  - 목록조회
	public List<MypageVo> selectList(){
		List<MypageVo> volist = null;
		Connection conn = jdbcTemplate.getConnection();
		volist = dao.selectList(conn);
		jdbcTemplate.close(conn);
		return volist;
	}
//	selectOne - 상세조회
	public MypageVo selectOne(String field/*주로 PK*/){
		MypageVo vo = null;
		Connection conn = jdbcTemplate.getConnection();
		vo = dao.selectOne(conn, field);
		jdbcTemplate.close(conn);
		return vo;
	}
}
