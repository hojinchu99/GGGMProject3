package com.beans;
import com.beans.*;

import oracle.jdbc.OracleTypes;

import java.util.*;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class FaqDAO {
	private Connection conn;
	private CallableStatement cs;
	private static FaqDAO dao;
	public static FaqDAO newInstance(){
		if(dao==null)
			dao = new FaqDAO();
		return dao;
	}
	
	public void getConnection(){
		try {
			Context init = new InitialContext();
			DataSource ds= (DataSource)init.lookup("java://comp/env/jdbc/oracle");
			conn=ds.getConnection();
		} catch (Exception e) {System.out.println(e.getMessage());}
	}
	public void disConnection(){
		try {
			if(conn!= null) conn.close();
			if(cs!= null) cs.close();
		} catch (Exception e) {System.out.println(e.getMessage());}
	}
	
	//값 읽어오기
	public List<FaqDTO> getAllFaq(){
		List<FaqDTO> list = new ArrayList<FaqDTO>();
		try {
			getConnection();
			String sql="{CALL getAllFaq(?)}";
			cs = conn.prepareCall(sql);
			cs.registerOutParameter(1, OracleTypes.CURSOR);
			cs.executeUpdate();
			ResultSet rs=(ResultSet)cs.getObject(1);
			while(rs.next()){
				FaqDTO d= new FaqDTO();
				d.setNo(rs.getInt(1));
				d.setSubject(rs.getString(2));
				d.setContent(rs.getString(3));
				list.add(d);
			}
			rs.close();
					
		} catch (Exception e) {System.out.println(e.getMessage());}
		finally{
			disConnection();
		}
		return list;
	}
	//값 삭제
	
	//값 수정
}