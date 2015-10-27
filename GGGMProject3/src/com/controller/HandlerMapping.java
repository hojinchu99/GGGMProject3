package com.controller;

import java.util.*;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class HandlerMapping extends DefaultHandler {
	Map map = new HashMap();
	
	// 파싱 대상은 applicationContext.xml입니다.
	// 여기는 파싱에 필요한 startElement()를 재정의 하는 부분입니다. 
	// qName은 태그이름, Attribute는 속성 값
	@Override
	public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
		try {
			if (qName.equals("bean")) {//bean 태그를 찾아서
				String id = attributes.getValue("id");//id와
				String cls = attributes.getValue("class");//class 속성을 가져옵니다.
				Class clsName = Class.forName(cls);//클래스를 지정해서
				Object obj = clsName.newInstance();//메모리 할당 후
				map.put(id, obj);//해당 내용을 맵에 저장합니다.
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}

	}

}
