package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ad.dao.AdvertiseDAO;
import com.ad.dao.AdvertiseDTO;
import com.ad.dao.*;

public class AdListModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		
		List<AdvertiseDTO> list=
				AdvertiseDAO.adListData();
		
		req.setAttribute("count", list);
		req.setAttribute("jsp1", "pages/adview/slidebanner.jsp");
		return "main.jsp";
	}

}
