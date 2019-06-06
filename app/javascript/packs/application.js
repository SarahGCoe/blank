import "bootstrap";
// import anime from 'lib/anime.es.js';
// import 'moving-letters';
import anime from 'animejs';
import $ from 'jquery';


// Popover
$(function () {
  $('[data-toggle="popover"]').popover()
});
//

// Moving Letters homepage
$('.ml14 .letters').each(function(){
  $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
});
anime.timeline({loop: true})
  .add({
    targets: '.ml14 .line',
    scaleX: [0,1],
    opacity: [0.5,1],
    easing: "easeInOutExpo",
    duration: 1200
  }).add({
    targets: '.ml14 .letter',
    opacity: [0,1],
    translateX: [40,0],
    translateZ: 0,
    scaleX: [0.3, 1],
    easing: "easeOutExpo",
    duration: 1600,
    offset: '-=600',
    delay: function(el, i) {
      return 150 + 25 * i;
    }
  }).add({
    targets: '.ml14',
    opacity: 0,
    duration: 2000,
    easing: "easeOutExpo",
    delay: 1000
  });
