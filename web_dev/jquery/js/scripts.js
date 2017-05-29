// Use jQuery to create three divs with images inside of them

var $new_meme = $("<div id='meme1'><img src='images/meme1.jpg'></div>");
var $new_meme_2 = $("<div id='meme2'><img src='images/meme2.jpg'></div>");
var $new_meme_3 = $("<div id='meme3'><img src='images/meme3.jpg'></div>");
$("#main-container").append($new_meme, $new_meme_2, $new_meme_3, "<div><h2>Happy Memes :D</h2></div>");

// Add a class to each of the images

$("#main-container").children().children().addClass("meme-img");

// Hide and show only the first image

$(".meme-img").hide();
$(".meme-img").first().fadeIn("slow");

// Add cursor pointer over images
// doesnt work as you cant use pseudo selectors unless you use a hack.
//$(".meme-img :hover").css("cursor:pointer")

// Add a subheading

$( "<h3>Click the image to view the next meme</h3>" ).insertAfter( "h1" );

// Add CSS class center to center the text and the image.
$(".meme-img, h1, h3").addClass("center");

// Simple Slider Function using this

$( ".meme-img" ).click(function() {
    if($(".meme-img").is(":visible")) {
      $(this).hide();
      $(this).closest("div").next().children().show();
    }
});

// Set max width to Meme Img

$(".meme-img").width("500px");


