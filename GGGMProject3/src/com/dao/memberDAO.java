package com.dao;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;
import java.util.*;

public class memberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL = "jdbc:oracle:thin:@localhost:1521:ORCL";

	// JDBC => DBCP => MyBatis => JPA
	// 드라이버 등록
	private static memberDAO dao;

	public static memberDAO newInstance() {
		if (dao == null)
			dao = new memberDAO();
		return dao;
	}

	public memberDAO() {

	}

	public void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(URL, "scott", "tiger");
		} catch (Exception ex) {
			System.out.println("1" + ex.getMessage());
		}
	}

	public void disConnection() {
		try {
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (Exception ex) {
		}
	}

	public int memberIdCount(String id) {
		int count=0;
		try {
			getConnection();
			String sql = "SELECT COUNT(*) FROM memberData WHERE id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			rs.next();
			count=rs.getInt(1);
			
		} catch (Exception ex) {
			System.out.println("2" + ex.getMessage());
		} finally {
			disConnection();
		}
		return count;
	}

	public memberDTO getMemberInfo(String id) {
		memberDTO d = new memberDTO();
		try {
			getConnection();
			String sql = "SELECT * FROM memberData WHERE id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs;
			rs = ps.executeQuery();
			rs.next();			
			d.setName(rs.getString(1));
			d.setId(rs.getString(2));
			d.setPwd(rs.getString(3));
			d.setBirth(rs.getDate(4));
			d.setTel(rs.getString(5));
			d.setSex(rs.getString(6));
			d.setPost(rs.getString(7));
			d.setAddr1(rs.getString(8));
			d.setAddr2(rs.getString(9));
			d.setSumpoint(rs.getInt(10));
			d.setEmail(rs.getString(11));
			d.setEmailreceive(rs.getString(12));
			d.setGrade(rs.getInt(13));			
			rs.close();
		} catch (Exception ex) {
			System.out.println("3" + ex.getMessage());
		} finally {
			disConnection();
		}
		return d;
	}
	public List<memberDTO> getNormalMemberAllData() {
		List<memberDTO> list = new ArrayList<memberDTO>();
		try {
			getConnection();
			String sql = "SELECT * FROM memberData WHERE grade=1";
			ps = conn.prepareStatement(sql);			
			ResultSet rs;
			rs = ps.executeQuery();
			while (rs.next()) {
				memberDTO d=new memberDTO();
				d.setName(rs.getString(1));
				d.setId(rs.getString(2));
				d.setPwd(rs.getString(3));
				d.setBirth(rs.getDate(4));
				d.setTel(rs.getString(5));
				d.setSex(rs.getString(6));
				d.setPost(rs.getString(7));
				d.setAddr1(rs.getString(8));
				d.setAddr2(rs.getString(9));
				d.setSumpoint(rs.getInt(10));
				d.setEmail(rs.getString(11));
				d.setEmailreceive(rs.getString(12));
				d.setGrade(rs.getInt(13));
				list.add(d);
			}						
			rs.close();
		} catch (Exception ex) {
			System.out.println("4" + ex.getMessage());
		} finally {
			disConnection();
		}
		return list;
	}
	public List<memberDTO> getMemberAllData() {
		List<memberDTO> list = new ArrayList<memberDTO>();
		try {
			getConnection();
			String sql = "SELECT * FROM memberData";
			ps = conn.prepareStatement(sql);			
			ResultSet rs;
			rs = ps.executeQuery();
			while (rs.next()) {
				memberDTO d=new memberDTO();
				d.setName(rs.getString(1));
				d.setId(rs.getString(2));
				d.setPwd(rs.getString(3));
				d.setBirth(rs.getDate(4));
				d.setTel(rs.getString(5));
				d.setSex(rs.getString(6));
				d.setPost(rs.getString(7));
				d.setAddr1(rs.getString(8));
				d.setAddr2(rs.getString(9));
				d.setSumpoint(rs.getInt(10));
				d.setEmail(rs.getString(11));
				d.setEmailreceive(rs.getString(12));
				d.setGrade(rs.getInt(13));
				list.add(d);
			}						
			rs.close();
		} catch (Exception ex) {
			System.out.println("5" + ex.getMessage());
		} finally {
			disConnection();
		}
		return list;
	}
	public List<memberDTO> getADMemberAllData() {
		List<memberDTO> list = new ArrayList<memberDTO>();
		try {
			getConnection();
			String sql = "SELECT * FROM memberData WHERE grade=2";
			ps = conn.prepareStatement(sql);			
			ResultSet rs;
			rs = ps.executeQuery();
			while (rs.next()) {
				memberDTO d=new memberDTO();
				d.setName(rs.getString(1));
				d.setId(rs.getString(2));
				d.setPwd(rs.getString(3));
				d.setBirth(rs.getDate(4));
				d.setTel(rs.getString(5));
				d.setSex(rs.getString(6));
				d.setPost(rs.getString(7));
				d.setAddr1(rs.getString(8));
				d.setAddr2(rs.getString(9));
				d.setSumpoint(rs.getInt(10));
				d.setEmail(rs.getString(11));
				d.setEmailreceive(rs.getString(12));
				d.setGrade(rs.getInt(13));
				list.add(d);
			}						
			rs.close();
		} catch (Exception ex) {
			System.out.println("5" + ex.getMessage());
		} finally {
			disConnection();
		}
		return list;
	}
	public List<memberDTO> getAdminMemberAllData() {
		List<memberDTO> list = new ArrayList<memberDTO>();
		try {
			getConnection();
			String sql = "SELECT * FROM memberData WHERE grade=3";
			ps = conn.prepareStatement(sql);			
			ResultSet rs;
			rs = ps.executeQuery();
			while (rs.next()) {
				memberDTO d=new memberDTO();
				d.setName(rs.getString(1));
				d.setId(rs.getString(2));
				d.setPwd(rs.getString(3));
				d.setBirth(rs.getDate(4));
				d.setTel(rs.getString(5));
				d.setSex(rs.getString(6));
				d.setPost(rs.getString(7));
				d.setAddr1(rs.getString(8));
				d.setAddr2(rs.getString(9));
				d.setSumpoint(rs.getInt(10));
				d.setEmail(rs.getString(11));
				d.setEmailreceive(rs.getString(12));
				d.setGrade(rs.getInt(13));
				list.add(d);
			}						
			rs.close();
		} catch (Exception ex) {
			System.out.println("5" + ex.getMessage());
		} finally {
			disConnection();
		}
		return list;
	}
}
