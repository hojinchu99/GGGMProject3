$(document).ready(function(){
  
  // variables
  var $header_top = $('.header-top');//.header-top은 main.css에 있음
  var $nav = $('nav');

  // toggle menu 
  $header_top.find('a').on('click', function() {//헤더 부분의 a태그를 찾아 클릭하면 다음 메소드 실행
    $(this).parent().toggleClass('open-menu');
  });
  //$(this)까지가 a태그 $(this).parent()가 header-top클래스의 div
  //toggleClass() 없으면 open-menu 클래스를 추가, 있으면 클래스를 삭제함

  // fullpage customization
  $('#fullpage').fullpage({//id가 fullpage인 div는 전체 화면이 보이는 부분
    sectionsColor: ['#B8AE9C', '#348899', '#F2AE72', '#5C832F', '#B8B89F'],//페이지별 배경색
    sectionSelector: '.vertical-scrolling',
    slideSelector: '.horizontal-scrolling',
    navigation: true,
    slidesNavigation: true,
    css3: true,
    controlArrows: false,
    anchors: ['firstSection', 'secondSection', 'thirdSection', 'fourthSection', 'fifthSection'],
    menu: '#menu',

    afterLoad: function(anchorLink, index) {
      $header_top.css('background', 'rgba(133, 50, 81, 0.3)');
      if (index == 5) {
          $('#fp-nav').hide();
        }
    },

    onLeave: function(index, nextIndex, direction) {
      if(index == 5) {
        $('#fp-nav').show();
      }
    },

    afterSlideLoad: function( anchorLink, index, slideAnchor, slideIndex) {
      if(anchorLink == 'fifthSection' && slideIndex == 1) {
        $.fn.fullpage.setAllowScrolling(false, 'up');
        $header_top.css('background', 'transparent');
        $nav.css('background', 'transparent');
        $(this).css('background', '#374140');
        $(this).find('h2').css('color', 'white');
        $(this).find('h3').css('color', 'white');
        $(this).find('p').css(
          {
            'color': '#DC3522',
            'opacity': 1,
            'transform': 'translateY(0)'
          }
        );
      }
    },

    onSlideLeave: function( anchorLink, index, slideIndex, direction) {
      if(anchorLink == 'fifthSection' && slideIndex == 1) {
        $.fn.fullpage.setAllowScrolling(true, 'up');
        $header_top.css('background', 'rgba(133, 50, 81, 0.3)');
        //$nav.css('background', 'rgba(0, 47, 77, .25)');
      }
    } 
  }); 
});