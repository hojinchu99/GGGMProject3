package com.change;

public class boardJSPChange {
	private static String[] jsp = { "BoardDefault.jsp", "ADBoard.jsp", "ReplyBoard.jsp", "FAQBoard.jsp", "QnABoard.jsp",
			"InquiryBoard.jsp" };

	public static String change(int no1) {
		return jsp[no1];
	}
}
