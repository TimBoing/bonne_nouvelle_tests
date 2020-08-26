const initCarousel = () => {
  const carousel = document.getElementById('carousel-accueil');
  if(!carousel) return;
  const carouselControls = document.querySelectorAll('.carousel-controls');
  const carouselIndicators = document.querySelectorAll('.carousel-indicators li')

  carouselControls.forEach((cControl) => {
    cControl.addEventListener('click', (event) => {
      // event.preventDefault;
      console.log(cControl.dataset.slide);
      // carousel.carousel(cControl.dataset.slide);
      $('#carousel-accueil').carousel(cControl.dataset.slide);
    })

  })

  carouselIndicators.forEach((cIndicator) => {
    cIndicator.addEventListener('click', (event) => {
      console.log(cIndicator.dataset.slideTo);
      $('#carousel-accueil').carousel(parseInt(cIndicator.dataset.slideTo));
    })
  })

}

export{initCarousel};

