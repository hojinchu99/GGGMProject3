package com.ad.dao;

import java.io.Reader;
import java.sql.*;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ad.dao.*;

public class AdvertiseDAO {
	private static SqlSessionFactory ssf;
    static
    {
    	try
    	{
    		Reader reader=Resources.getResourceAsReader("com/common/Config.xml");
    		// XML 파일 읽기
    		// 파싱 요청 ==> id , data (Map)
    		ssf=new SqlSessionFactoryBuilder().build(reader);
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    
    	}
    }
    public static List<AdvertiseDTO> adListData(){
    	SqlSession session=ssf.openSession();
    	List<AdvertiseDTO> count=session.selectList("adListData");
    	session.close();
    	return count;
    	
    }

	
	
	
}
