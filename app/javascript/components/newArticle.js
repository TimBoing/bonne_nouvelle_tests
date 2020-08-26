const newArticle = () => {
  const articlesHelp = document.getElementById("information-for-articles");
  if(!articlesHelp) return;
  const articleLink = document.getElementById("article_link");
  const articleTitleField = document.getElementById("article_title");
  const articleContenuField = document.getElementById("article_contenu");

  articleLink.addEventListener("change", (event) => {
    if(articleLink.value == ""){
      articlesHelp.style.display = "none";
      articleTitleField.style.display = "block";
      articleContenuField.style.display = "block";
    }else{
      articlesHelp.style.display = "block";
      articleTitleField.style.display = "none";
      articleContenuField.style.display = "none";
    }
  });
}

export{newArticle};
