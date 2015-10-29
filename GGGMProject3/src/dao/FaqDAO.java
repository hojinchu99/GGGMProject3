package dao;

import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class FaqDAO{
	private static SqlSessionFactory ssf;
	
	static{
		try {
			Reader reader= Resources.getResourceAsReader("common/Config.xml");
			ssf= new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {System.out.println(e.getMessage());}
	}
	public static List<FaqDTO> faqAllData(){
		System.out.println("dao안쪽 접근");
		SqlSession session=ssf.openSession();
		List<FaqDTO> list=session.selectList("faqAllData");
		System.out.println("dao안쪽 벗어남");
		return list;
	}
	
}

