const initAnchorOne = () => {
  let arrowOne = document.querySelector('.arrow-1');
  let el = document.querySelector('#watering-cal');

  arrowOne.addEventListener('click', function () {
      el.scrollIntoView(false);
  });

};
export {initAnchorOne};


const initAnchorTwo = () => {
  let arrowTwo = document.querySelector('.arrow-2');
  let key = document.querySelector('#key');
  
  arrowTwo.addEventListener('click', function () {
      key.scrollIntoView(true);
  });

};
export {initAnchorTwo};


const initAnchorThree = () => {
  let arrowThree = document.querySelector('.arrow-3');
  let select = document.querySelector('#addon-select');
  
  arrowThree.addEventListener('click', function () {
      select.scrollIntoView(true);
  });
};

export {initAnchorThree};



