const initAnchorToHIW = () => {
  const hiwbutton = document.querySelector('#hiw-button');
  const hiwplace = document.querySelector('#hiw');
  if (hiwbutton) {
      hiwbutton.addEventListener('click', function () {
      hiw.scrollIntoView({
        behavior: "smooth",
        block: "start",
        inline: "start",
      });
    });
  }
};

export {initAnchorToHIW};
