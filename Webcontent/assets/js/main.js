const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);

// Handler Carousel
let carouselItems = $$(".full-home-banners__main-item");
let carouselIndicators = $$(".full-home-bannders__main-dot");
let carouselBtnLeft = $(".carosel-btn-left");
let carouselBtnRight = $(".carosel-btn-right");
let i = 0,
  lengthCarousel = carouselItems.length;

function removeActiveCarousel() {
  $(".full-home-banners__main-item.active").classList.remove("active");
  $(".full-home-bannders__main-dot.active").classList.remove("active");
}

function addActiveCarousel(i) {
  carouselItems[i].classList.add("active");
  carouselIndicators[i].classList.add("active");
}

arrIndicators = Array.from(carouselIndicators);
arrIndicators.forEach((indicator, index) => {
  const carouselItem = carouselItems[index];
  indicator.onclick = function () {
    i = index;
    removeActiveCarousel();
    carouselItem.classList.add("active");
    this.classList.add("active");
  };
});

carouselBtnLeft.onclick = function () {
  i--;
  if (i < 0) {
    i = lengthCarousel - 1;
  }
  removeActiveCarousel();
  addActiveCarousel(i);
};

carouselBtnRight.onclick = function () {
  i++;
  if (i >= lengthCarousel) {
    i = 0;
  }
  removeActiveCarousel();
  addActiveCarousel(i);
};

setInterval(() => {
  if (i === lengthCarousel - 1) {
    i -= lengthCarousel;
  }
  i++;
  removeActiveCarousel();
  addActiveCarousel(i);
}, 5000);
