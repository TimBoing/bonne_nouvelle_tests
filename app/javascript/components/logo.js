const animateLogo = () => {
  const logo = document.getElementById("main-logo");
  if(!logo) return;

  let rotation = 0;

  logo.addEventListener("mouseover", (event) => {
    rotation += 360;
    logo.style.transform = `rotate(-${rotation}deg)`;
  });
}

export{animateLogo};
