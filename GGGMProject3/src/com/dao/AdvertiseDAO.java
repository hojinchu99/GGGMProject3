package com.dao;

import java.sql.*;

public class AdvertiseDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL = "jdbc:oracle:thin:@localhost:1521:ORCL";

	// JDBC => DBCP => MyBatis => JPA
	// 드라이버 등록
	private static AdvertiseDAO dao;

	public static AdvertiseDAO newInstance() {
		if (dao == null)
			dao = new AdvertiseDAO();
		return dao;
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

	public AdvertiseDTO getAdInfo(String adno) {
		AdvertiseDTO a = new AdvertiseDTO();
		try {
			getConnection();
			String sql = "SELECT * FROM ad WHERE adno=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, adno);
			ResultSet rs;
			rs = ps.executeQuery();
			rs.next();
			a.setAdno(rs.getString(1));
			a.setAdid(rs.getString(2));
			a.setAdsubject(rs.getString(3));
			a.setMsg(rs.getString(4));
			a.setHit(rs.getInt(5));
			a.setPointrange(rs.getString(6));
			a.setUrl(rs.getString(7));
			a.setMaj_category(rs.getString(8));
			a.setSub_category(rs.getString(9));
			a.setPresentrange(rs.getString(10));
			a.setPresentinfo(rs.getString(11));
			a.setImg(rs.getString(12));
			rs.close();
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			disConnection();
		}
		return a;
	}
	
}
