// Swiperのオプションを定数化
const opt = {
  loop: true,
  pagination: {
    el: '.swiper-pagination',
  },
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  }
}

// Swiperを実行(初期化)
/* global Swiper $*/
$(document).on('turbolinks:load', function() {
    let swiper = new Swiper('.swiper',opt);
});

// ページの上に移動できる矢印
$(function() {
              $('#back a').on('click',function(event){
                // 以下のセレクタ('body, html')は「body要素またはhtml要素」の意味。
                // 2つの要素を指定するのは、ユーザの利用環境によって指定対象の要素が変化するため。
                $('body, html').animate({
                  scrollTop:0
                }, 800);
                event.preventDefault();
              });
            });

// arctext.jsを使って文字をカーブさせた
$(function() {
    $("#arctext-stamp1").arctext({
        radius : 120,
    });

    $("#arctext-stamp2").arctext({
        radius : 118,
    });

    $("#arctext-stamp3").arctext({
        radius : 120,
    });
});