const hamburger = document.getElementById("hamburger")
const navMenu = document.querySelector(".nav-menu")
const authNav = document.querySelector(".auth-nav")

hamburger.addEventListener("click", () => {
    navMenu.classList.toggle("show");
    authNav.classList.toggle("show");
});