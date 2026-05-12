// Simple Working Carousel
document.addEventListener('DOMContentLoaded', function () {
    const track = document.getElementById('carouselTrack');
    const container = document.querySelector('.carousel-container');
    const prevBtn = document.getElementById('prevBtn');
    const nextBtn = document.getElementById('nextBtn');
    const dotsContainer = document.getElementById('carouselDots');

    if (!track || !prevBtn || !nextBtn) {
        console.error('Carousel elements missing');
        return;
    }

    const items = document.querySelectorAll('.carousel-item');
    const totalItems = items.length;
    let currentPage = 0;

    function getItemsPerPage() {
        if (window.innerWidth <= 480) return 1;
        if (window.innerWidth <= 768) return 2;
        if (window.innerWidth <= 1024) return 3;
        return 4;
    }

    function getTotalPages() {
        return Math.ceil(totalItems / getItemsPerPage());
    }

    function updateCarousel() {
        const itemsPerPage = getItemsPerPage();
        const itemWidth = items[0].offsetWidth;
        const gap = 20;
        const scrollAmount = currentPage * (itemWidth + gap) * itemsPerPage;

        track.style.transform = `translateX(-${scrollAmount}px)`;

        // Update dots
        const dots = document.querySelectorAll('.dot');
        dots.forEach((dot, index) => {
            if (index === currentPage) {
                dot.classList.add('active');
            } else {
                dot.classList.remove('active');
            }
        });

        // Update buttons
        const totalPages = getTotalPages();
        prevBtn.disabled = currentPage === 0;
        nextBtn.disabled = currentPage === totalPages - 1;
    }

    function createDots() {
        if (!dotsContainer) return;
        const totalPages = getTotalPages();
        dotsContainer.innerHTML = '';

        for (let i = 0; i < totalPages; i++) {
            const dot = document.createElement('div');
            dot.classList.add('dot');
            if (i === currentPage) dot.classList.add('active');
            dot.addEventListener('click', () => {
                currentPage = i;
                updateCarousel();
            });
            dotsContainer.appendChild(dot);
        }
    }

    function nextSlide() {
        const totalPages = getTotalPages();
        if (currentPage < totalPages - 1) {
            currentPage++;
            updateCarousel();
        }
    }

    function prevSlide() {
        if (currentPage > 0) {
            currentPage--;
            updateCarousel();
        }
    }

    // Event listeners
    nextBtn.addEventListener('click', nextSlide);
    prevBtn.addEventListener('click', prevSlide);

    // Handle resize
    let resizeTimeout;
    window.addEventListener('resize', function () {
        clearTimeout(resizeTimeout);
        resizeTimeout = setTimeout(() => {
            const totalPages = getTotalPages();
            if (currentPage >= totalPages) {
                currentPage = totalPages - 1;
            }
            if (currentPage < 0) currentPage = 0;
            createDots();
            updateCarousel();
        }, 200);
    });

    // Initialize
    createDots();
    updateCarousel();

    // Force update after images load
    window.addEventListener('load', function () {
        updateCarousel();
    });
});