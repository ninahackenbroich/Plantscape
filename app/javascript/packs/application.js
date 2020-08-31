// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g: 
import { initSlider } from '../components/slider';
import { initDatepicker } from '../components/datepicker';
import { initPrice } from '../components/pricecalc';
import { initTooltip } from '../components/tooltip';
import { initAnchorOne } from '../components/anchor';
import { initAnchorTwo } from '../components/anchor';
import { initAnchorThree } from '../components/anchor';
import { initAnchorFour } from '../components/anchor';


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  initSlider();
  initDatepicker();
  initPrice();
  initTooltip();
  initAnchorOne();
  initAnchorTwo();
  initAnchorThree();
  initAnchorFour();
});


