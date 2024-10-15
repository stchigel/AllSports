const menu = document.querySelector(".menunav2");
const hamburger= document.querySelector(".hamburger");
const closeIcon= document.querySelector(".closeIcon");
const menuIcon = document.querySelector(".menuIcon");

const futbol = document.querySelector(".futbolm");
const futbolc = document.querySelector(".subfutbolm");

const ligas = document.querySelector(".ligasm");
const ligasc = document.querySelector(".subligasm");

const conf = document.querySelector(".confm");
const confc = document.querySelector(".subconfm");

const mma = document.querySelector(".mmam");
const mmac = document.querySelector(".submmam");

const divisiones = document.querySelector(".divisionesm");
const divisionesc = document.querySelector(".subdivisionesm");

const mayores = document.querySelector(".mayoresm");
const mayoresc = document.querySelector(".submayoresm");

const f1 = document.querySelector(".f1m");
const f1c = document.querySelector(".subf1m");

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

function toggleMenuc(menuc) {
  if (menuc.style.display == "block") {
    menuc.style.display = "none";
  } else {
    menuc.style.display = "block";
  }
}

futbol.addEventListener("click", () => toggleMenuc(futbolc));
ligas.addEventListener("click", () => toggleMenuc(ligasc));
conf.addEventListener("click", () => toggleMenuc(confc));

mma.addEventListener("click", () => toggleMenuc(mmac));
divisiones.addEventListener("click", () => toggleMenuc(divisionesc));
mayores.addEventListener("click", () => toggleMenuc(mayoresc));
f1.addEventListener("click", () => toggleMenuc(f1c));