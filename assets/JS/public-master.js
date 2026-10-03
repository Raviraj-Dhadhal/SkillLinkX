// 1. Get references to header elements for mobile navigation
const hamburger = document.getElementById("hamburger");     // Mobile hamburger menu button
const navMenu = document.querySelector(".nav-menu");        // Navigation links container
const authNav = document.querySelector(".auth-nav");        // Login / Register buttons container

// 2. Toggle navigation menu open/close on hamburger button click
if (hamburger) {
    hamburger.addEventListener("click", function () {
        navMenu.classList.toggle("show"); // Show or hide nav links dropdown on mobile
        authNav.classList.toggle("show"); // Show or hide login/register buttons on mobile
    });
}