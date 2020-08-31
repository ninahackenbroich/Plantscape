const initAnchorOne = () => {
  const arrowOne = document.querySelector('.arrow-1');
  const el = document.querySelector('#watering-cal');
  arrowOne.addEventListener('click', function () {
    el.scrollIntoView({
      behavior: "smooth",
      block: "nearest",
      inline: "end",
    });
  });
};

export {initAnchorOne};


const initAnchorTwo = () => {
  const arrowTwo = document.querySelector('.arrow-2');
  const key = document.querySelector('#key');
  
  arrowTwo.addEventListener('click', function () {
      key.scrollIntoView({
        behavior: "smooth",
        block: "nearest",
        inline: "center",
    });
  });
};

export {initAnchorTwo};


const initAnchorThree = () => {
  const arrowThree = document.querySelector('.arrow-3');
  const select = document.querySelector('#addon-select');
  
  arrowThree.addEventListener('click', function () {
    select.scrollIntoView({
      behavior: "smooth",
      block: "nearest",
      inline: "start",
    });
  });
};

export {initAnchorThree};


const initAnchorFour = () => {
  const arrowFour = document.querySelector('.arrow-4');
  const book = document.querySelector('#booking-btn');
  
  arrowFour.addEventListener('click', function () {
    book.scrollIntoView({
      behavior: "smooth",
      block: "nearest",
      inline: "end",
    });
  });
};

export {initAnchorFour};



