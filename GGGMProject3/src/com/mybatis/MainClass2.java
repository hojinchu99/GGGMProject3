package com.mybatis;

public class MainClass2 {

	public static void main(String[] args) {
		SqlSessionFactory ssf=new SqlSessionFactory();
		String sql=ssf.getSQL("empAllData");
		System.out.println(sql);
		sql=ssf.getSQL("empFindData");
		System.out.println(sql);
		sql=ssf.getSQL("empFindDataByName");
		System.out.println(sql);
	}

}
