const bordersAnimation = () => {
  const affiche = document.querySelector(".main-info");
  if(!affiche) return;
  console.log("yo");
  const borderTop = document.getElementById("border-top-div");
  const borderBottom = document.getElementById("border-bottom-div");


  // affiche.addEventListener("mouseover", (event) =>{
  //   borderTop.style.width = "100%";
  //   borderBottom.style.width = "100%";

  // });

  // affiche.addEventListener("mouseout", (event) =>{
  //   borderTop.style.width = "0%";
  //   borderBottom.style.width = "0%";
  // });

  document.addEventListener("DOMContentLoaded",(event) => {
    borderTop.style.width = "100%";
    borderBottom.style.width = "100%";
  });


}

export{bordersAnimation};
