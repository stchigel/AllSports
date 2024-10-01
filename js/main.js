const menu = document.querySelector(".menunav2");
const hamburger= document.querySelector(".hamburger");
const closeIcon= document.querySelector(".closeIcon");
const menuIcon = document.querySelector(".menuIcon");
const futbol = document.querySelector(".futbolm");
const futbolp = document.querySelector(".futbolm p");
const futbolc = document.querySelector(".subfutbolm");

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

function toggleFutbol(menuc, botonp) {
  if (menuc.style.display == "block") {
    futbolc.style.display = "none";
    botonp.innerHTML = "Futbol";
  } else {
    menuc.style.display = "block";
    botonp.innerHTML = "Futbol";
  }
}

hamburger.addEventListener("click", toggleMenu);
futbol.addEventListener("click", toggleFutbol(futbolc, futbolp));