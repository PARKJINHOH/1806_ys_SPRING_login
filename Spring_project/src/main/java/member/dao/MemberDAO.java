package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import member.dto.MemberVO;
import springUtil.DBManager;

public class MemberDAO {
	
	static int memcheck = 0;

	private MemberDAO() {
	}

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}

	
	// 회원 가입
	public int insertMember(MemberVO mvo) {
		int check = 0;
		String sql = "insert into springmember(id,pwd,name) values(? ,? ,?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mvo.getId());
			pstmt.setString(2, mvo.getPwd());
			pstmt.setString(3, mvo.getName());
			pstmt.executeUpdate();
			check = 1;
		} catch (Exception e) {
			System.out.println("insertMember 에러 발생");
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
return check;
	}
	
	// 로그인
	public MemberVO memberCheck(String id, String pass) throws SQLException{
		
		String sql = "select * from SPRINGmember where id=? and pwd=?";
		
		MemberVO mVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			
			rs = pstmt.executeQuery();
			memcheck = 1;
			if(rs.next()){
				mVo = new MemberVO();
				mVo.setId(rs.getString("id"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setName(rs.getString("name"));
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			System.out.println("memberCheck 에러 : ");
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mVo;
	}
	
	public int memcheck(){
		return memcheck;
	}
	
	

}
