function playGameOfThrones(event) {
  event.target.style.display = "none";
  var gif = document.getElementById("gif");
  gif.style.display = "block";
}

var photo = document.getElementById("got-pic");
photo.addEventListener("click", playGameOfThrones);

function mouseHoverEffect(event) {
  event.target.style = "cursor:pointer;padding:10px;border:3px solid red;";
}

photo.addEventListener("mouseover", mouseHoverEffect);

// var button = document.getElementsByClassName("button");
// button = button[0]
// button.addEventListener("click", playGameOfThrones);