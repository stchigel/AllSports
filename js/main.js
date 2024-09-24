const menu = document.querySelector(".menunav2");
const menuItems = document.querySelectorAll(".menuItem");
const hamburger= document.querySelector(".hamburger");
const closeIcon= document.querySelector(".closeIcon");
const menuIcon = document.querySelector(".menuIcon");

function toggleMenu() {
  if (menu.style.display == "block") {
    menu.style.display = "none";
    closeIcon.style.display = "none";
    menuIcon.style.display = "block";
  } else {
    menu.style.display = "block";
    closeIcon.style.display = "block";
    menuIcon.style.display = "none";
  }
}

hamburger.addEventListener("click", toggleMenu);