package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dto.mDto;

public class mDao {
	
	   
	private String drv = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/mvcdb";
	private String user = "duser";
	private String pass = "12341234";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public mDao() {
		try {
			Class.forName(drv);
			//Class.forName() 메서드를 호출하여, mysql에서 제공하는 Driver 클래스를 JVM method area에 로딩시킨다
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로드 실패");
		}
	}
		
	private void close() {
			try {
				if (rs!=null)rs.close();
				if (pstmt!=null)pstmt.close();
				if (conn!=null)conn.close();
			} catch (SQLException e) {
				//e.printStackTrace();
			}
		
	}

	public int insertid(mDto mdata) {
		int mresult = 0;
		
		String query = "insert into member values(?,?,?,?,?,?)";
		

			try {
				conn = DriverManager.getConnection(url, user, pass);
				
				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, mdata.getId());
				pstmt.setString(2, mdata.getPass());
				pstmt.setString(3, mdata.getPasscheck());
				pstmt.setString(4, mdata.getName());
				pstmt.setInt(5, mdata.getAge());
				pstmt.setString(6, mdata.getGender());
				
				mresult = pstmt.executeUpdate();
			} catch (SQLException e) {
				//e.printStackTrace();
			} finally {
				close();
			}
			return mresult;
	
	}
	
	public int checkUser(String id, String pw) {
		int check = -1; // 기본값으로 아이디가 없을때 반환
		System.out.println("mDao에서 출력 : " + id);
		System.out.println("mDao에서 출력 : " + pw);

		String query = "select * from member where id=?";
		
			try {
				conn = DriverManager.getConnection(url, user, pass);
				
				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getString("pass").equals(pw)) {
						check = 1; //아이디와 비밀번호 일치
					} else {
						check = 0; //아이디와 비밀번호 불일치
					}
				}
			} catch (SQLException e) {
				//e.printStackTrace();
			} finally {
				close();
			}
			return check;
	}
	
	
	
	
	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
