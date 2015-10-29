package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.*;
import java.util.*;

public class FaqModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		System.out.println("¸ðµ¨ Á¢±Ù");
		List<FaqDTO> faqlist= FaqDAO.faqAllData();
		req.setAttribute("faqlist", faqlist);
		System.out.println("¸ðµ¨ °Ë»ç");
		System.out.println(faqlist.get(0).getSubject());
		req.setAttribute("jsp", "pages/board/faq.jsp");
		
		
		return "main.jsp";
//		return "/pages/board/faq.jsp";
	}

}
