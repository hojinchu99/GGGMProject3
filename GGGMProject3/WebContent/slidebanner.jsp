<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String ad_no="";
	
%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>bxSlider</title>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="./js/jquery.bxslider/jquery.bxslider.min.js"></script>
    <script>
        $( function () {
            var mySlider = $( '#slide_banner' ).bxSlider( {
                mode: 'horizontal',// ���� ���� ���� �����̵�
                speed: 500,        // �̵� �ӵ��� ����
                pager: false,      // ���� ��ġ ����¡ ǥ�� ���� ����
                moveSlides: 1,     // �����̵� �̵��� ����
                slideWidth: 200,   // �����̵� �ʺ�
                minSlides: 3,      // �ּ� ���� ����
                maxSlides: 3,      // �ִ� ���� ����
                slideMargin: 30,    // �����̵尣�� ����
                auto: false,        // �ڵ� ���� ����
                autoHover: true,   // ���콺 ȣ���� ���� ����
                captions: true, // �̹����� title �Ӽ��� ����ȴ�.
                controls: false    // ���� ���� ��ư ���� ����
            } );
            
 
     
            $( '#prevBtn' ).on( 'click', function () {
                mySlider.goToPrevSlide();  //���� �����̵� ��ʷ� �̵�
                return false;              //<a>�� ��ũ ����
            } );
 
 
            $( '#nextBtn' ).on( 'click', function () {
                mySlider.goToNextSlide(); 
                return false;
            } );
        } );
        $( function () {
            var mySlider = $( '#slide_banner1' ).bxSlider( {
                mode: 'horizontal',// ���� ���� ���� �����̵�
                speed: 500,        // �̵� �ӵ��� ����
                pager: false,      // ���� ��ġ ����¡ ǥ�� ���� ����
                moveSlides: 1,     // �����̵� �̵��� ����
                slideWidth: 200,   // �����̵� �ʺ�
                minSlides: 3,      // �ּ� ���� ����
                maxSlides: 3,      // �ִ� ���� ����
                slideMargin: 30,    // �����̵尣�� ����
                auto: false,        // �ڵ� ���� ����
                autoHover: true,   // ���콺 ȣ���� ���� ����
                captions: true, // �̹����� title �Ӽ��� ����ȴ�.
                controls: false    // ���� ���� ��ư ���� ����
            } );
            
 
     
            $( '#prevBtn' ).on( 'click', function () {
                mySlider.goToPrevSlide();  //���� �����̵� ��ʷ� �̵�
                return false;              //<a>�� ��ũ ����
            } );
 
 
            $( '#nextBtn' ).on( 'click', function () {
                mySlider.goToNextSlide(); 
                return false;
            } );
        } );
        $( function () {
            var mySlider = $( '#slide_banner2' ).bxSlider( {
                mode: 'horizontal',// ���� ���� ���� �����̵�
                speed: 500,        // �̵� �ӵ��� ����
                pager: false,      // ���� ��ġ ����¡ ǥ�� ���� ����
                moveSlides: 1,     // �����̵� �̵��� ����
                slideWidth: 200,   // �����̵� �ʺ�
                minSlides: 3,      // �ּ� ���� ����
                maxSlides: 3,      // �ִ� ���� ����
                slideMargin: 30,    // �����̵尣�� ����
                auto: false,        // �ڵ� ���� ����
                autoHover: true,   // ���콺 ȣ���� ���� ����
                captions: true, 	// �̹����� title �Ӽ��� ����ȴ�.
                controls: false    // ���� ���� ��ư ���� ����
                
            } );
            
 
     
            $( '#prevBtn' ).on( 'click', function () {
                mySlider.goToPrevSlide();  //���� �����̵� ��ʷ� �̵�
                return false;              //<a>�� ��ũ ����
            } );
 
 
            $( '#nextBtn' ).on( 'click', function () {
                mySlider.goToNextSlide(); 
                return false;
            } );
        } );
    </script>
    <style>
        
        #banner_wrap {padding-top:0px; position: relative; width: 100%; height:100%; margin: 0 auto; vertical-align: middle;
  }
        #prevBtn { position: absolute; left: 0; top: 45%; }
        #nextBtn { position: absolute; right: 0; top: 45%; }
#banner_wrap #slide_banner .ad_top{
      width:100%;
      height:70%;
      padding: 0;
      margin: 0;
      
     
      }
#banner_wrap #slide_banner .ad_bottom{
       width:100%;
      height:30%;
      padding: 0;
      margin: 0;
     
      }
li {
	list-style: none;
	font-size: 10pt;
	padding: 0;
	margin: 0 auto;
	vertical-align: middle;
	text-align: center;
}

#banner_wrap .banner_margin{
	
	
}
a{

}

    </style>
</head>
 
<body>
    <div id="banner_wrap">
        <ul id="slide_banner" class="banner_margin">
            <c:forEach begin="" end="" items="">
            <li>
            <div class="ad_top">
                <a href="ad_index.jsp" target="_blank">
                    <img src="./img/image_test1.jpg"   title="." alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������1
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    		
                    	
                    	</ul>
                    </div>
               
               
            </li>
           	</c:forEach>
            <li>
               <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg" title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������2
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>
            
            <li>
                <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg"  title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������3
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
                
            </li>
            <li>
                <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg"  title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������4
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
                
            </li>
            <li>
                <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg"  title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������5
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>
            <li>
                <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg" title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������6
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>            
        </ul>
        <ul id="slide_banner1" class="banner_margin">
            <li>
              <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg"  title="." alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������1
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>
            <li>
                <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg" title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������2
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>
            <li>
               <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg" title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������3
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>
            <li>
                <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg" title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������4
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>
            <li>
               <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg"  title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������5
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>            
        </ul>
        <ul id="slide_banner2" class="banner_margin">
            <li>
               <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg" title="." alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������1
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>
            <li>
               <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg" title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������2
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>
            <li>
                <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg" title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������3
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>
            <li>
                <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg" title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������4
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>
            <li>
                <div class="ad_top">
                <a href="#" target="_blank">
                    <img src="./img/image_test1.jpg" title="" alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			��������5
                    		</li>
                    		<li>
                    			����ð�
                    		</li>
                    		<li>
                    		����Ʈ
                    		</li>
                    	</ul>
                    </div>
            </li>            
        </ul>
        
        

        <p>
            <a href="#" id="prevBtn">
                <img src="./img/prev.png" alt="����">
            </a>
        </p>
        <p>
            <a href="#" id="nextBtn">
                <img src="img/next.png" alt="����">
            </a>
        </p>

    </div>
</body>
</html>