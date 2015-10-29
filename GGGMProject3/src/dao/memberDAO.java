package dao;

import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class memberDAO {
	private static SqlSessionFactory ssf;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("common/Config.xml");
			// XML 파일 읽기
			// 파싱 요청 ==> id , data (Map)
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}

	public static int memberIdCount(String id) {
		SqlSession session = ssf.openSession();
		int count = session.selectOne("memberIdCount", id);
		session.close();
		return count;
	}

	public static memberDTO getMemberInfo(String id) {
		SqlSession session = ssf.openSession();
		memberDTO d = session.selectOne("getMemberInfo", id);
		session.close();
		return d;
	}

	public static List<memberDTO> getMemberAllData() {
		SqlSession session = ssf.openSession();
		List<memberDTO> list = session.selectList("getMemberAllData");
		session.close();
		return list;
	}

	public static List<memberDTO> getADMemberAllData() {
		SqlSession session = ssf.openSession();
		List<memberDTO> list = session.selectList("getADMemberAllData");
		session.close();
		return list;
	}
	public static List<memberDTO> getNormalMemberAllData() {
		SqlSession session = ssf.openSession();
		List<memberDTO> list = session.selectList("getNormalMemberAllData");
		session.close();
		return list;
	}
	public static List<memberDTO> getAdminMemberAllData() {
		SqlSession session = ssf.openSession();
		List<memberDTO> list = session.selectList("getAdminMemberAllData");
		session.close();
		return list;
	}
}
