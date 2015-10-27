<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                mode: 'horizontal',// 가로 방향 수평 슬라이드
                speed: 500,        // 이동 속도를 설정
                pager: false,      // 현재 위치 페이징 표시 여부 설정
                moveSlides: 1,     // 슬라이드 이동시 개수
                slideWidth: 200,   // 슬라이드 너비
                minSlides: 3,      // 최소 노출 개수
                maxSlides: 3,      // 최대 노출 개수
                slideMargin: 30,    // 슬라이드간의 간격
                auto: false,        // 자동 실행 여부
                autoHover: true,   // 마우스 호버시 정지 여부
                captions: true, // 이미지의 title 속성이 노출된다.
                controls: false    // 이전 다음 버튼 노출 여부
            } );
            
 
     
            $( '#prevBtn' ).on( 'click', function () {
                mySlider.goToPrevSlide();  //이전 슬라이드 배너로 이동
                return false;              //<a>에 링크 차단
            } );
 
 
            $( '#nextBtn' ).on( 'click', function () {
                mySlider.goToNextSlide(); 
                return false;
            } );
        } );
        $( function () {
            var mySlider = $( '#slide_banner1' ).bxSlider( {
                mode: 'horizontal',// 가로 방향 수평 슬라이드
                speed: 500,        // 이동 속도를 설정
                pager: false,      // 현재 위치 페이징 표시 여부 설정
                moveSlides: 1,     // 슬라이드 이동시 개수
                slideWidth: 200,   // 슬라이드 너비
                minSlides: 3,      // 최소 노출 개수
                maxSlides: 3,      // 최대 노출 개수
                slideMargin: 30,    // 슬라이드간의 간격
                auto: false,        // 자동 실행 여부
                autoHover: true,   // 마우스 호버시 정지 여부
                captions: true, // 이미지의 title 속성이 노출된다.
                controls: false    // 이전 다음 버튼 노출 여부
            } );
            
 
     
            $( '#prevBtn' ).on( 'click', function () {
                mySlider.goToPrevSlide();  //이전 슬라이드 배너로 이동
                return false;              //<a>에 링크 차단
            } );
 
 
            $( '#nextBtn' ).on( 'click', function () {
                mySlider.goToNextSlide(); 
                return false;
            } );
        } );
        $( function () {
            var mySlider = $( '#slide_banner2' ).bxSlider( {
                mode: 'horizontal',// 가로 방향 수평 슬라이드
                speed: 500,        // 이동 속도를 설정
                pager: false,      // 현재 위치 페이징 표시 여부 설정
                moveSlides: 1,     // 슬라이드 이동시 개수
                slideWidth: 200,   // 슬라이드 너비
                minSlides: 3,      // 최소 노출 개수
                maxSlides: 3,      // 최대 노출 개수
                slideMargin: 30,    // 슬라이드간의 간격
                auto: false,        // 자동 실행 여부
                autoHover: true,   // 마우스 호버시 정지 여부
                captions: true, 	// 이미지의 title 속성이 노출된다.
                controls: false    // 이전 다음 버튼 노출 여부
                
            } );
            
 
     
            $( '#prevBtn' ).on( 'click', function () {
                mySlider.goToPrevSlide();  //이전 슬라이드 배너로 이동
                return false;              //<a>에 링크 차단
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
            <li>
            <div class="ad_top">
                <a href="ad_index.jsp" target="_blank">
                    <img src="./img/image_test1.jpg"   title="." alt=""></a>
                    </div>
                    <div class="ad_bottom">
                    	<ul>
                    		<li>
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
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
                    			영상제목
                    		</li>
                    		<li>
                    			영상시간
                    		</li>
                    		<li>
                    		포인트
                    		</li>
                    	</ul>
                    </div>
            </li>            
        </ul>
        
        

        <p>
            <a href="#" id="prevBtn">
                <img src="./img/prev.png" alt="이전">
            </a>
        </p>
        <p>
            <a href="#" id="nextBtn">
                <img src="img/next.png" alt="다음">
            </a>
        </p>

    </div>
</body>
</html>