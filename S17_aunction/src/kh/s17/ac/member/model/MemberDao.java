package kh.s17.ac.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import common.jdbc.jdbcTemplate;

public class MemberDao {
	// insert

//	insert
//	update
//	delete
//	selectList
//	selectOne
	// 최소 5개
//	insert - 등록
	public int insert(Connection conn, MemberVo vo) {
		int result = 0;
		return result;
	}

//	update - 수정
	public int update(Connection conn, MemberVo vo, String memberId/* 주로 PK */) {
		int result = 0;
		return result;
	}

//	delete  - 삭제
	public int delete(Connection conn, String memberId/* 주로 PK */) {
		int result = 0;
		return result;
	}

//	selectList  - 목록조회
	public List<MemberVo> selectList(Connection conn) {
		List<MemberVo> volist = null;

		return volist;
	}

//	selectOne - 상세조회
	public MemberVo selectOne(Connection conn, String memberId/* 주로 PK */) {
		MemberVo vo = null;
		return vo;
	}
// login
	public MemberVo login(Connection conn, String memberId, String memberPassword) {
		MemberVo vo = null;
	
		String query = "select * from MEMBER where memberId=? and memberPassword=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			pstmt.setString(2, memberPassword);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new MemberVo();
				vo.setMemberId(rs.getString("memberId"));
				vo.setMemberName(rs.getString("memberName"));
				vo.setMembertype(rs.getInt("mebmerType"));
				vo.setMemberPassword(rs.getString("memberPassword"));
				vo.setMemberEmail(rs.getString("memberEmail"));
				vo.setTradeName(rs.getString("tradeName"));
				vo.setBusinessRegistrationNumber(rs.getString("businessRegistrationNumber"));
				vo.setRepresentative(rs.getString("representative"));
				
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			jdbcTemplate.close(rs);
			jdbcTemplate.close(pstmt);
		}
		
		return vo;
	}
}