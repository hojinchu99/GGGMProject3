package controller;
import java.io.File;
// 클래스를 여러개 묶어서 관리 => Container(Spring)
// 단순하다 , 결합성이 약하다
import java.util.*;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import model.*;
public class WebApplicationContext {
	Map clsMap=new HashMap();
    public WebApplicationContext(String path)
    {
    	try
    	{
    		SAXParserFactory spf=
    			SAXParserFactory.newInstance();
    		SAXParser sp=spf.newSAXParser();
    		HandlerMapping hm=new HandlerMapping();
    		sp.parse(new File(path), hm);
    		clsMap=hm.map;
    	}catch(Exception ex){}
    }
    public Model getBean(String key)
    {
    	return (Model)clsMap.get(key);
    }
}



