const triage = () => {
  const triages = document.querySelectorAll(".triage");
  if(!triages) return;

  triages.forEach(t => {

    let promote = t.querySelector('.promote');
    let demote = t.querySelector('.demote');

    promote.addEventListener('click', (e) => {

      fetch("/promotion", {
          method: "POST",
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
          },

          body: JSON.stringify({ type: t.dataset.type, id: t.dataset.id })
        })
          .then(response => response.json())
          .then((data) => {
            console.log(data);
            window.location.reload();
          });

    });

    demote.addEventListener('click', (e) => {

      fetch("/demotion", {
          method: "POST",
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
          },

          body: JSON.stringify({ type: t.dataset.type, id: t.dataset.id })
        })
          .then(response => response.json())
          .then((data) => {
            console.log(data);
            window.location.reload();
          });

    });


  });

}

export{triage};
