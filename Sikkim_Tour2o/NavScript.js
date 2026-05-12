document.addEventListener("DOMContentLoaded", function () {
    const menuToggle = document.getElementById("menuToggle");
    const navLinks = document.getElementById("navLinks");

    // Toggle menu
    menuToggle.addEventListener("click", function () {
        navLinks.classList.toggle("active");
        menuToggle.classList.toggle("active"); // Hamburger → X
    });

    // Auto-close on mobile link click
    document.querySelectorAll(".nav-links li a").forEach(link => {
        link.addEventListener("click", function () {
            if (navLinks.classList.contains("active")) {
                navLinks.classList.remove("active");
                menuToggle.classList.remove("active");
            }
        });
    });
});

