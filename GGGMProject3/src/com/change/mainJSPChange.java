package com.change;

public class mainJSPChange {
	private static String[] jsp = { 
		"pages/main/home.jsp",//0
		"pages/adview/slidebanner.jsp",//1
		"pages/adview/local.jsp",//2
		"pages/adview/recom.jsp",//3
		"pages/myinfo/exchange.jsp",//4
		"pages/myinfo/point.jsp",//5
		"pages/myinfo/gift.jsp",//6
		"pages/board/notification.jsp",//7
		"pages/board/qna.jsp",//8
		"pages/board/faq.jsp",//9
		"pages/adhost/ad_graph.jsp",//10
		"pages/adhost/cost.jsp",//11
		"pages/adhost/adrequest.jsp",//12
		"pages/Admin/member/member.jsp",//13
		"pages/Admin/board/board.jsp"//14
	};
	
	public static String change(int no) {
		return jsp[no];
	}
}
