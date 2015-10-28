package com.dao;
/*
 * 	JDBC ==> DBCP ==> ORM ==> JPA
 * 					=======
 * 				  MyBatis.IBatis,Hibernate(LIB)
 * 				  XML,Anotation
 * 	Servlet  ==> JSP ==> MVC  ==> Spring
 * 	BigData  ==> 검색 ==> 분석 ==> 저장 ==>시각화 
 * 				====    ===
 * 				루씬	  MR,HIVE,PIG MongoDB, R
 * 				HADOOP(1.2.1) =>(2) YARN	
 * 	보안 ==> 해킹==> 시큐어 코딩 ==> 암호화,복호화
 * 
 */
import java.util.*; //List
import javax.sql.*; //DataSource
import javax.xml.ws.Response;

import oracle.jdbc.OracleTypes;

import java.sql.*;  //Connection,Statement,ResultSet
import javax.naming.*; //Context
public class BoardDAO {
		private Connection conn;
		private CallableStatement cs;
		private static BoardDAO dao;
		public static BoardDAO newInstance(){
			if(dao==null)
				dao=new BoardDAO();
				return dao;
		}
		//==Connection의 생성 갯수가 동일
		//==> 시간 절약
		// ==> 노출이 없다(SQL,URL,USERNAME,PASSWORD)
		// 주소(Connection)
		public void getConnection(){
			try{
				Context init = new InitialContext();
				DataSource ds=(DataSource)init.lookup("java://comp/env/jdbc/oracle");
				conn=ds.getConnection();
			}catch(Exception ex){
				System.out.println(ex.getMessage());
			}
		}
		public void disConnection(){
			try{
				if(cs!=null)cs.close();
				if(conn!=null)conn.close();
			}catch(Exception ex){}
		}
		public List<BoardDTO> qnaListData(int page){
			List<BoardDTO> list= new ArrayList<BoardDTO>();
			try{
				getConnection();
				int rowSize=10;
				int start=(page*rowSize)-(rowSize-1);
				int end=(page*rowSize);
				String sql="{CALL qnaListData(?,?,?)}";
				cs=conn.prepareCall(sql);
				cs.registerOutParameter(1, OracleTypes.CURSOR);
				cs.setInt(2, start);
				cs.setInt(3, end);
				cs.executeUpdate();
				ResultSet rs=(ResultSet)cs.getObject(1);
				while(rs.next()){
					BoardDTO d=new BoardDTO();
					d.setNo(rs.getInt(1));
					d.setSubject(rs.getString(2));
					d.setId(rs.getString(3));
					d.setRegdate(rs.getDate(4));
					d.setHit(rs.getInt(5));
					d.setGroup_tab(rs.getInt(6));
					d.setRownum(rs.getInt(7));
					list.add(d);
				   }rs.close();
			}catch(Exception ex){
				System.out.println(ex.getMessage());
			}
			finally{
				disConnection();
			}
			return list;
		}
		//추가
		public void qnaInsert(BoardDTO d){
			try{
				getConnection();
				String sql="{CALL qnaInsert(?,?,?,?)}";
				cs=conn.prepareCall(sql);
				cs.setString(1, d.getId());
				cs.setString(2, d.getSubject());
				cs.setString(3, d.getContent());
				cs.setString(4, d.getPwd());
				cs.executeUpdate();
			}catch(Exception ex)
			{
				System.out.println(ex.getMessage());
			}
			finally{
				disConnection();
			}
		}
		//내용보기
		public BoardDTO qnaContentData(int no)
		{
			BoardDTO d =new BoardDTO();		
			try{
				getConnection();
				String sql="{CALL qnaContentData(?,?,?)}";
				cs=conn.prepareCall(sql);
				cs.setInt(1, no);
				cs.registerOutParameter(2, OracleTypes.CURSOR);
				cs.registerOutParameter(3, OracleTypes.VARCHAR);
				cs.executeUpdate();
				ResultSet rs = (ResultSet)cs.getObject(2);
				String res=cs.getString(3);
				if(res.equals("yes")){
					rs.next();
					d.setNo(rs.getInt(1));
					d.setId(rs.getString(2));
					d.setSubject(rs.getString(3));
					d.setContent(rs.getString(4));
					d.setRegdate(rs.getDate(5));
					d.setHit(rs.getInt(6));
					rs.close();
				}				
			}catch(Exception ex){
				System.out.println(ex.getMessage());
			}finally{
				disConnection();
			}return d;
		}
		public BoardDTO qnaContentData2(int no)
		{
			BoardDTO d =new BoardDTO();		
			try{
				getConnection();
				String sql="{CALL qnaContentData2(?,?,?)}";
				cs=conn.prepareCall(sql);
				cs.setInt(1, no);
				cs.registerOutParameter(2, OracleTypes.CURSOR);
				cs.registerOutParameter(3, OracleTypes.VARCHAR);
				cs.executeUpdate();
				ResultSet rs = (ResultSet)cs.getObject(2);
				String res=cs.getString(3);
				if(res.equals("yes")){
					rs.next();
					d.setNo(rs.getInt(1));
					d.setId(rs.getString(2));
					d.setSubject(rs.getString(3));
					d.setContent(rs.getString(4));
					d.setRegdate(rs.getDate(5));
					d.setHit(rs.getInt(6));
					rs.close();
				}				
			}catch(Exception ex){
				System.out.println(ex.getMessage());
			}finally{
				disConnection();
			}return d;
		}
		public boolean qnaAuthorizedData(int no, String pwd)
		{
			BoardDTO d =new BoardDTO();	
			boolean bCheck=false;
			try{
				getConnection();
				String sql="{CALL qnaAuthorizedData(?,?,?,?)}";
				cs=conn.prepareCall(sql);
				cs.setInt(1, no);
				cs.setString(2, pwd);
				cs.registerOutParameter(3, OracleTypes.CURSOR);
				cs.registerOutParameter(4, OracleTypes.VARCHAR);
				cs.executeUpdate();
				ResultSet rs = (ResultSet)cs.getObject(3);
				String res=cs.getString(4);
				if(res.equals("yes"))
				{
					bCheck=true;
					rs.next();
					d.setNo(rs.getInt(1));
					d.setId(rs.getString(2));
					d.setSubject(rs.getString(3));
					d.setContent(rs.getString(4));
					d.setRegdate(rs.getDate(5));
					d.setHit(rs.getInt(6));
					rs.close();
				}
				else
					 bCheck=false;			
			}catch(Exception ex){
				System.out.println(ex.getMessage());
			}finally{
				disConnection();
			}return bCheck;
		}
		//총페이지
		public int qnaTotalPage()
		{
			int total=0;
			try{
				getConnection();
				String sql="{CALL qnaRowCount(?)}";
				cs=conn.prepareCall(sql);
				cs.registerOutParameter(1, OracleTypes.INTEGER);
				cs.executeUpdate();
				int count=cs.getInt(1);
				total=(int)(Math.ceil(count/10.0));
			}catch(Exception ex)
			{
				System.out.println(ex.getMessage());
			}finally {
				disConnection();
			}
			return total;
		}
		//게시물 총갯수
		public int qnaRowCount()
		{
			int total=0;
			try{
				getConnection();
				String sql="{CALL qnaRowCount(?)}";
				cs=conn.prepareCall(sql);
				cs.registerOutParameter(1, OracleTypes.INTEGER);
				cs.executeUpdate();
				total=cs.getInt(1);
				
			}catch(Exception ex)
			{
				System.out.println(ex.getMessage());
			}finally {
				disConnection();
			}
			return total;
		}
		public void qnaReplyInsert(int pno,BoardDTO d){
			try{
				getConnection();
				String sql="{CALL qnaReplyInsert(?,?,?,?,?)}";
				cs=conn.prepareCall(sql);
				cs.setInt(1, pno);
				cs.setString(2, d.getId());
				cs.setString(3, d.getSubject());
				cs.setString(4, d.getContent());
				cs.setString(5, d.getPwd());
				cs.executeUpdate();
			}catch(Exception ex)
			{
				System.out.println(ex.getMessage());
			}
			finally{
				disConnection();
			}
		}
		public void qnaDelete(int no)
		{
			try{
				getConnection();
				String sql="{CALL qnaDelete(?)}";
				cs=conn.prepareCall(sql);
				cs.setInt(1, no);
				cs.executeUpdate();
			}catch(Exception ex){
				System.out.println(ex.getMessage());
			}finally{
				disConnection();
			}
		}
		public void qnaCheck(int no,BoardDTO d,String pwd)
		{
			try{
				getConnection();
				String sql="{CALL qnaDelete(?,?,?)}";
				cs=conn.prepareCall(sql);
				cs.setInt(1, no);
				cs.setString(2, pwd);
				cs.registerOutParameter(3, OracleTypes.VARCHAR);
				cs.executeUpdate();
				String msg=cs.getString(3);
				}catch(Exception ex){
				System.out.println(ex.getMessage());
			}finally{
				disConnection();
			}
		}
		public BoardDTO qnaUpdateData(int no)
		   {
			   BoardDTO d=new BoardDTO();
			   try
			   {
				   getConnection();
				   String sql="{CALL qnaUpdateData(?,?)}";
				   cs=conn.prepareCall(sql);
				   cs.setInt(1, no);
				   cs.registerOutParameter(2, OracleTypes.CURSOR);
				   cs.executeUpdate();
				   ResultSet rs=(ResultSet)cs.getObject(2);
				 
					   rs.next();
					   d.setNo(rs.getInt(1));
					   d.setId(rs.getString(2));
					   d.setSubject(rs.getString(3));
					   d.setContent(rs.getString(4));
					   rs.close();
				   
			   }catch(Exception ex)
			   {
				   System.out.println(ex.getMessage());
			   }
			   finally
			   {
				   disConnection();
			   }
			   return d;
		   }
		   // 수정 하기
		   public boolean qnaUpdate(BoardDTO d)
		   {
			   boolean bCheck=false;
			   try
			   {
				   getConnection();
				   String sql="{CALL qnaUpdate(?,?,?,?,?)}";
				   cs=conn.prepareCall(sql);
				   cs.setInt(1, d.getNo());
				   cs.setString(2, d.getId());
				   cs.setString(3, d.getSubject());
				   cs.setString(4, d.getContent());
				   cs.setString(5, d.getPwd());
				   cs.executeUpdate();
				   bCheck=true;
			   }catch(Exception ex)
			   {
				   System.out.println(ex.getMessage());
			   }
			   finally
			   {
		          disConnection();
			   }
			   return bCheck;
		   }
		
}
