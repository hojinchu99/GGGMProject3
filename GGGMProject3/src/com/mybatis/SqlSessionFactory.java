package com.mybatis;

import java.util.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import java.io.*;

//DOM Parsing 속도는 느리지만 수정 삭제가 가능함
public class SqlSessionFactory {
	private Map map=new HashMap();
	
	public SqlSessionFactory(){
		try{
			DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
			DocumentBuilder db=dbf.newDocumentBuilder(); //실제로 파싱해주는 애
			String path="C:\\Users\\hong\\git\\GGGMProject2\\GGGMProject2\\src\\com\\dao\\mapper.xml";
			Document doc=db.parse(new File(path));//파싱을 요청함
			Element root=doc.getDocumentElement();//최상위 태그에서 값을 가져옴
			NodeList list=root.getElementsByTagName("select");
			for(int i=0;i<list.getLength();i++){
				Element selectElement=(Element)list.item(i);//i번째 태그의 값을 읽어옴
				String id=selectElement.getAttribute("id");//empAllData, empFindData
				String sql=list.item(i).getFirstChild().getNodeValue();
				map.put(id, sql);
			}
			
		}catch(Exception ex){
			
		}
	}
	
	public String getSQL(String key){
		String sql=(String)map.get(key); //get()은 Object를 리턴함
		int no=sql.indexOf('#');
		if(no>0){
			sql=sql.substring(0, sql.lastIndexOf('#')+1);
			sql=sql.replace('#', '?');
		}
		
		return sql;
	}
	
}
