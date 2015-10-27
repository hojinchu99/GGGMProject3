<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>bxSlider</title>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.bxslider/jquery.bxslider.min.js"></script>
    <script>
        $( function () {
            var mySlider = $( '#slide_banner' ).bxSlider( {
                mode: 'horizontal',// 가로 방향 수평 슬라이드
                speed: 500,        // 이동 속도를 설정
                pager: false,      // 현재 위치 페이징 표시 여부 설정
                moveSlides: 1,     // 슬라이드 이동시 개수
                slideWidth: 1200,   // 슬라이드 너비
                minSlides: 4,      // 최소 노출 개수
                maxSlides: 4,      // 최대 노출 개수
                slideMargin: 5,    // 슬라이드간의 간격
                auto: false,        // 자동 실행 여부
                autoHover: true,   // 마우스 호버시 정지 여부
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
                slideWidth: 1200,   // 슬라이드 너비
                minSlides: 4,      // 최소 노출 개수
                maxSlides: 4,      // 최대 노출 개수
                slideMargin: 5,    // 슬라이드간의 간격
                auto: false,        // 자동 실행 여부
                autoHover: true,   // 마우스 호버시 정지 여부
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
                slideWidth: 1200,   // 슬라이드 너비
                minSlides: 4,      // 최소 노출 개수
                maxSlides: 4,      // 최대 노출 개수
                slideMargin: 5,    // 슬라이드간의 간격
                auto: false,        // 자동 실행 여부
                autoHover: true,   // 마우스 호버시 정지 여부
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
        
        #banner_wrap {padding-top:0px; position: relative; width: 90%; margin: 0 auto; vertical-align: middle;
  }
        #prevBtn { position: absolute; left: 0; top: 40%; }
        #nextBtn { position: absolute; right: 0; top: 40%; }
      
    </style>
</head>
 
<body>
    <div id="banner_wrap">
        <ul id="slide_banner">
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                   <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>            
        </ul>
        <ul id="slide_banner1">
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                   <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>            
        </ul>
        <ul id="slide_banner2">
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                   <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="<%=request.getContextPath() %>/img/image_test1.jpg" alt="">
                </a>
            </li>            
        </ul>
        
        

        <p>
            <a href="#" id="prevBtn">
                <img src="<%=request.getContextPath() %>/img/prev.jpg" alt="이전">
            </a>
        </p>
        <p>
            <a href="#" id="nextBtn">
                <img src="<%=request.getContextPath() %>/img/next.jpg" alt="다음">
            </a>
        </p>

    </div>
</body>
</html>