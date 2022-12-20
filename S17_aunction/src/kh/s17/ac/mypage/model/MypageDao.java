package kh.s17.ac.mypage.model;

import java.sql.Connection;
import java.util.List;

public class MypageDao {

//	insert - 등록
	public int insert(Connection conn, MypageVo vo) {
		int result = 0;
		return result;
	}
//	update - 수정
	public int update(Connection conn, MypageVo vo, String field/*주로 PK*/) {
		int result = 0;
		return result;
	}
//	delete  - 삭제
	public int delete(Connection conn, String field/*주로 PK*/) {
		int result = 0;
		return result;
	}
//	selectList  - 목록조회
	public List<MypageVo> selectList(Connection conn){
		List<MypageVo> volist = null;

		return volist;
	}
//	selectOne - 상세조회
	public MypageVo selectOne(Connection conn, String field/*주로 PK*/){
		MypageVo vo = null;
		return vo;
	}
}