package controller;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import java.util.*;
// XML 파서 
public class HandlerMapping extends DefaultHandler{
    Map map=new HashMap();
	@Override
	public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
		try
		{
			if(qName.equals("bean"))
			{
				// 속성 
				String id=attributes.getValue("id");
				String cls=attributes.getValue("class");
				Class clsName=Class.forName(cls);
				Object obj=clsName.newInstance();
				map.put(id, obj);
			}
		}catch(Exception ex){}
	}
   
}





