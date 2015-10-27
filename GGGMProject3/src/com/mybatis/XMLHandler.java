package com.mybatis;

import java.lang.reflect.Method;

import jdk.internal.org.xml.sax.Attributes;
import jdk.internal.org.xml.sax.SAXException;
import jdk.internal.org.xml.sax.helpers.DefaultHandler;

//SAXParsing
public class XMLHandler extends DefaultHandler{
	Class clsName;
	Object obj;
	@Override
	public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
		try{
			if(qName.equals("dataSource")){//dataSource는 Config.xml에 있음
				String type=attributes.getValue("type");//type속성을 가져옴 여기는com.mybatis.DataSource
				clsName=Class.forName(type);
				obj=clsName.newInstance();
			}
			// TODO: 각 DTO는 dataSource에 해당함
			// if(qName.equals("xxxDTO")){...}로 짜야함
			if(qName.equals("property")){
				String name=attributes.getValue("name");
				String value=attributes.getValue("value");
				
				Method[] method=clsName.getDeclaredMethods();
				for(Method m:method){
					String methodName=m.getName();
					if(methodName.equalsIgnoreCase("set"+name)){//DataSource 클래스에 해당하는 set메소드를 찾아서
						m.invoke(obj, value);//해당 메소드에 값을 채움
					}
				}
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	
	//파싱할 때의 startElement재정의
	
	
	
}
