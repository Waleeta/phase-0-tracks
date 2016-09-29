$(document).ready(function() {
     $("img").click(function(){
        $("img").animate({height: "+=200px"});
});
     $("img").click(function(){
        $("img").animate({height: "-=200px"});
});
});

$(document).ready(function() {
     $("#footer").mouseenter(function(){
        $("#footer").slideUp();
});
     $("#footer").mouseleave(function(){
        $("#footer").slideDown();
});
});