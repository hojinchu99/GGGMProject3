package com.dao;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;
import java.util.*;

public class memberDAO {
    private Connection conn;
    private PreparedStatement ps;
    private final String URL="jdbc:oracle:thin:@localhost:1521:ORCL";
    
    // JDBC => DBCP => MyBatis => JPA
    // 드라이버 등록
    private static memberDAO dao; 
    public static memberDAO newInstance()
    {
 	   if(dao==null)
 		   dao=new memberDAO();
 	   return dao;
    }
    public memberDAO()
    {
    	
    }
    public void getConnection()
    {
    	try
    	{
    		Class.forName("oracle.jdbc.driver.OracleDriver");        	
    		conn=DriverManager.getConnection(URL,"scott","tiger");
    	}catch(Exception ex)
    	{
    		System.out.println("1"+ex.getMessage());
    	}
    }
    public void disConnection()
    {
    	try
    	{
    		if(ps!=null) ps.close();
    		if(conn!=null) conn.close();
    	}catch(Exception ex){}
    }
	
	public boolean idCheck(String id, String pwd){
		boolean bCheck=false;
		try{
			getConnection();
			String sql="SELECT id,pwd FROM testmember WHERE id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1,id);
			ResultSet rs;
			rs=ps.executeQuery();
			rs.next();
			String dbid=rs.getString(1);
			String dbpwd=rs.getString(2);
			rs.close();
			if(dbid.equals(id)){
				if(dbpwd.equals(pwd)){
					bCheck=true;					
				}else{
					bCheck=false;
				}
			}else{
				bCheck=false;
			}
			
		}catch(Exception ex){
			System.out.println("2"+ex.getMessage());
		}finally{
			disConnection();
		}
		return bCheck;
	}
	public memberDTO getMemberInfo(String id){
		memberDTO d=new memberDTO();
		try{
			getConnection();
			String sql="SELECT * FROM testmember WHERE id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs;
			rs=ps.executeQuery();
			rs.next();
			d.setId(rs.getString(1));
			d.setPwd(rs.getString(2));
			d.setName(rs.getString(3));
			d.setGrade(rs.getInt(4));
			rs.close();
		}catch(Exception ex){
			System.out.println("3"+ex.getMessage());
		}finally{
			disConnection();
		}
		return d;
	}
}
