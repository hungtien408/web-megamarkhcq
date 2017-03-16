function pageLoad() {
    EqualSizer('.wrapper-pro .product-box');
    EqualSizer('.wrapper-pro .product-box .info-content > a');
    EqualSizer('.wrapper-pro .product-box .info-content .description');
}

(function ($) {
    $(window).load(function () {
        EqualSizer('.info4 .infobox');
        EqualSizer('.info2 .infobox');
        EqualSizer('.wrapper-box .box-bot');
        EqualSizer('.news-box');
        EqualSizer('.wrapper-pro .product-box');
        EqualSizer('.wrapper-pro .product-box .info-content > a');
        EqualSizer('.wrapper-pro .product-box .info-content .description');
        height_pop();
    });
    $(window).resize(function () {
        height_pop();
    })
    $(function () {
        myfunload();
        sp_quantity();
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    $("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu li:last-child").addClass("last");
    $("#menu li:first-child").addClass("fisrt");
    $("#banner .item:first-child").addClass("active");


    mymap();
    myfunsroll();
    menusroll();

    if ($("#sliderDetails").size() == 1) {
        var bigimg = $(".small-img:first").attr("href");
        var smallimg = $(".small-img:first").attr("data-img");
        $(".cloud-zoom").attr("href", bigimg).find("img:first").attr("src", smallimg);
        jQuery('.cloud-zoom').CloudZoom();

        $('#sliderDetails .slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            infinite: false,
            fade: true,
            asNavFor: '#sliderDetails .slider-nav'
        });
        $('#sliderDetails .slider-nav').slick({
            slidesToShow: 5,
            slidesToScroll: 1,
            asNavFor: '#sliderDetails .slider-for',
            dots: false,
            vertical: true,
            infinite: false,
            //centerMode: true,
            focusOnSelect: true,
            responsive: [
       {
           breakpoint: 767,
           settings: {
               vertical: false,
               slidesToShow: 5
           },

       },
         {
             breakpoint: 360,
             settings: {
                 vertical: false,
                 slidesToShow: 4
             },

         }
            ]

        });
        $('#sliderDetails .slider-nav').on('beforeChange', function (event, slick, currentSlide, nextSlide) {
            var bigimg = $("#sliderDetails .slider-nav .slick-slide:eq(" + nextSlide + ") .small-img").attr("href");
            var smallimg = $("#sliderDetails .slider-nav .slick-slide:eq(" + nextSlide + ") .small-img").attr("data-img");
            $(".cloud-zoom").attr("href", bigimg).find("img:first").attr("src", smallimg);
            jQuery('.cloud-zoom').CloudZoom();
        });
    }
    /* accodion tin van */
    $(".cauhoi-content").hide();
    //$(".cau-hoi").append('<i class="fa fa-plus"></i>')
    // Áp dụng sự kiện click vào thẻ h3
    $(".cau-hoi").click(function () {
        // chọn .accordion (do phần tử đi đi ngay sau phần tử h3 nên ta dùng .next())
        $(".cau-hoi").removeClass('active');
        $(".cau-hoi i").removeClass('fa-minus');
        $(this).children("i").addClass('fa-minus');
        $(this).addClass('active');
        $accordion = $(this).next();
        // Kiểm tra nếu đang ẩn thì sẽ hiện và ẩn các phần tử khác
        // Nếu đang hiện thì click vào h3 sẽ ẩn
        if ($accordion.is(':hidden') === true) {
            $(".cauhoi-content").slideUp();
            $accordion.slideDown();
            $(this).addClass('active');
            $(this).children("i").addClass('fa-minus');
        } else {
            $accordion.slideUp();
            $(".cau-hoi").removeClass('active');
            $(".cau-hoi i").removeClass('fa-minus');
        }


        $('.scroll-popup .popup-content .form-popup').mCustomScrollbar({
            autoHideScrollbar: true,
            theme: "dark-thick",
        });

    });
}
/*========================================================================*/


function myfunsroll() {
    mysroll();
    $("#sroltop a").click(function () {
        $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
        return false;
    });
}
function mysroll() {
    mysrol();
    $(window).scroll(function () {
        mysrol();
    });
}
function mysrol() {
    var topsroll = $(window).scrollTop();
    if (topsroll > 100) {
        $("#sroltop").stop(true, true).animate({ "opacity": 0.8 }, 500);
    } else {
        $("#sroltop").stop(true, true).animate({ "opacity": 0 }, 500);
    }
}

function menusroll() {
    var htop = $("#header").height();
    srollmenu(htop);
    $(window).scroll(function () {
        srollmenu(htop);
    });
}
function srollmenu(htop) {
    //if ($(window).scrollTop() > htop) {
    //    $(".wrapper-menu").addClass("header-sroll");
    //} else {
    //    $(".wrapper-menu").removeClass("header-sroll");
    //}
}
/*===============================*/
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 320) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}
/*========================================================================*/
function DoEqualSizer(myclass) {
    var heights = $(myclass).map(function () {
        $(this).height('auto');
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(myclass).height(maxHeight);
};

function EqualSizer(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function () {
        DoEqualSizer(myclass);
    });
};

/** popup **/
//$('.btn-book a').click(function () {
//    $('#mainContent').append('<div id="overlay-screen-active">');
//    $('.popup .popup-content').css('top', '30px');
//});
$('.cart a').click(function () {
    $('#mainContent').append('<div id="overlay-screen-active">');
    $('.popup .popup-content').css('top', '30px');
});
$(document).on('click', ".popup-btn-close, #overlay-screen-active", function () {
    $('.popup-content').css('top', '-250%');
    $('#overlay-screen-active').fadeOut();
    $('#overlay-screen-active').remove();
    return false;
});
$(document).on('click', ".btn-a a", function () {
    //$('.btn-a a').click(function () {
    $('#mainContent').append('<div id="overlay-screen-active">');
    $('.popup-content').css('top', '-250%');
    $('#overlay-screen-active').fadeOut();
    $('#overlay-screen-active').remove();
    $('.popup_1 .popup-content').css('top', '30px');
});

function height_pop() {
    var n = $(window).height();
    $('.scroll-popup').each(function () {
        var x = $(this).children('.popup-content').height();
        if (x > n) {
            $(this).children('.popup-content').css('max-height', n - 50);
        }
        else {
            $(this).children('.popup-content').css('max-height', n - 50);
        }
    })
}
function sp_quantity() {
    $(".sp-btn").on("click", function () {
        var $button = $(this),
            $input = $button.closest('.sp-quantity').find("input.quntity-input");
        var oldValue = $input.val(),
            newVal;
        console.log(oldValue);

        if ($(this).attr('data-id') == 'sp-plus') {
            newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 0) {
                newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        $input.val(newVal);
    });
}