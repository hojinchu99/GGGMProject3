package controller;
import java.io.File;
// Ŭ������ ������ ��� ���� => Container(Spring)
// �ܼ��ϴ� , ���ռ��� ���ϴ�
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



