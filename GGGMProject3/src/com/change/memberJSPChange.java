package com.change;

public class memberJSPChange {
	   private static String[] jsp={
			  "Admindefault.jsp","NormalMember.jsp",
			  "ADMember.jsp","AdminMember.jsp"
		   };
		   public static String change(int no)
		   {
			   return jsp[no];
		   }
}
