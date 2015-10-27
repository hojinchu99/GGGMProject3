package com.controller;

import java.util.*;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import com.model.Model;
import java.io.File;

public class WebApplicationContext {

	Map clsMap = new HashMap();

	public WebApplicationContext(String path) {
		try {
			SAXParserFactory spf = SAXParserFactory.newInstance();
			SAXParser sp = spf.newSAXParser();
			HandlerMapping hm = new HandlerMapping();
			// 재정의한 startElement()를 통해 맵에 저장합니다.
			sp.parse(new File(path), hm);
			clsMap = hm.map;// hm에서 저장한 맵과 같은 주소를 할당하면서 메모리를 공유합니다.

		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}

	// 해당 클래스를 넘겨줌
	public Model getBean(String key) {
		return (Model) clsMap.get(key);
	}

}
