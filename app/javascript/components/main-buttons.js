const animateBordersMainButtons = () => {
  const mainButtons = document.querySelectorAll('.main-button');
  if(!mainButtons) return;

  mainButtons.forEach((button) => {
    button.addEventListener("mouseover", (event) => {
      const redDiv = button.querySelector('#red-div');
      redDiv.style.width = "100%";
    });

    button.addEventListener("mouseout", (event) => {
      if(!button.classList.contains("active")){
        const redDiv = button.querySelector('#red-div');
        redDiv.style.width = "0%";
      }

    });

  });

}

export{animateBordersMainButtons};
