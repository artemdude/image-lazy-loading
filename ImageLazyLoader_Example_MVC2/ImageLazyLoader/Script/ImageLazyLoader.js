 /*!
 *Image lazy loader
 * http://www.shkolovy.com/
 *
 * Copyright 2010, Artem Shkolovy
 */
$(document).ready(function(){function b(){var b=$(window).scrollTop(),d=$(window).scrollTop()+$(window).height(),g=$(window).scrollLeft(),h=$(window).scrollLeft()+$(window).width();$("body").find("img").each(function(i,a){if($(a).attr("srcAtr")!=void 0){var c=$(a).offset().top,e=$(a).offset().left,f=c+$(a).height();$(a).width();if((c>=b&&c<=d||f>=b&&f<=d)&&e>=g&&e<=h)c=$(a).attr("srcAtr"),$(a).attr("src",c).load(function(){$(a).removeAttr("srcAtr")})}})}b();$(window).resize(function(){b()});$(window).scroll(function(){b()})});