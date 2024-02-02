
var navBar = document.querySelector('.nav-bar');

function showMenu(){
    // sets the CSS right property of the navLinks element to "0"
    navBar.style.left = "0" // initial position as specidied in css
    navBar.style.display = "block"
}

function hideMenu(){
    navBar.style.left = "-200px" // moves the nav-bar -200px relative to the  left margin
   
}

