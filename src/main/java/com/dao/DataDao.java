package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dto.DataDto;

public class DataDao {
	
	private String drv = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/mvcdb";
	private String user = "duser";
	private String pass = "12341234";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//드라이버 로드 (생성자)
	public DataDao() {
		
		try {
			Class.forName(drv); 
		} catch (ClassNotFoundException e) {
			//e.printStackTrace();
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
	// *************************************   데이터 입력   *************************************
	public int insertData(DataDto data) {
		int result = 0;
		
		String query = "insert into chart values (?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			conn = DriverManager.getConnection(url, user, pass);
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, data.getC_no());
			pstmt.setString(2, data.getC_name());
			pstmt.setInt(3, data.getC_age());
			pstmt.setString(4, data.getC_gender());
			pstmt.setString(5, data.getC_ssn());
			pstmt.setString(6, data.getC_dis());
			pstmt.setString(7, data.getC_imp());
			pstmt.setString(8, data.getC_date());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			//e.printStackTrace();
		} finally {
			close();
		}
		 return result;
	}
	// *************************************   데이터 출력   *************************************
	
	public List<DataDto> selectList() {
		List<DataDto> dList = new ArrayList<>();
		
		String query = "select * from chart";
		
		try {
			conn = DriverManager.getConnection(url, user, pass);
			
			pstmt = conn.prepareStatement(query);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				DataDto d = new DataDto();
				
				d.setC_no(rs.getInt(1));
				d.setC_name(rs.getString(2));
				d.setC_age(rs.getInt(3));
				d.setC_gender(rs.getString(4));
				d.setC_ssn(rs.getString(5));
				d.setC_dis(rs.getString(6));
				d.setC_imp(rs.getString(7));
				d.setC_date(rs.getString(8));
				
				dList.add(d);
			}
		} catch (SQLException e) {
			//e.printStackTrace();
		} finally {
			close();
		}
		return dList;
	}

		// *************************************   차트넘버로 데이터 출력   *************************************
		public DataDto selectchartno(int no){
			DataDto d = null;
			
			String query = "select * from chart where c_no = ?";
			
			try {
				conn = DriverManager.getConnection(url, user, pass);
				
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, no);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					d = new DataDto();
					
					d.setC_no(rs.getInt(1));
					d.setC_name(rs.getString(2));
					d.setC_age(rs.getInt(3));
					d.setC_gender(rs.getString(4));
					d.setC_ssn(rs.getString(5));
					d.setC_dis(rs.getString(6));
					d.setC_imp(rs.getString(7));
					d.setC_date(rs.getString(8));
					
				}
				
			} catch (SQLException e) {
				//e.printStackTrace();
			}
			return d;
		}
		
	
	// *************************************   데이터 수정   *************************************
		public int updateData(DataDto data) {
			int result = 0;
			
			String query = "update chart set c_imp=?, c_date =? where c_no = ?";
			
			try {
				conn = DriverManager.getConnection(url, user, pass);
								pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, data.getC_imp());
				pstmt.setString(2, data.getC_date());
				pstmt.setInt(3, data.getC_no());				
				
				result = pstmt.executeUpdate();
				
			}catch(SQLException e) {
				//e.printStackTrace();
			}finally {
				close();
			}
			return result;
		}
	
	
	// *************************************   데이터 삭제   *************************************
	public int deleteData(int no) {
		int result = 0;
		
		String query = "delete from chart where c_no = ?";
		
		try {
			conn = DriverManager.getConnection(url, user, pass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, no);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
		} finally {
			close();
		}
		return result;
	}
}
