
const sliderOutput = document.querySelector("#number-plants")


const initPrice = () => {
  sliderOutput.innerHTML = sliderValue
    if (sliderValue > 60 ) {
      var base_price = 39.99;
    } else if (sliderValue > 40 ) {
      var base_price = 29.99;
    } else if (sliderValue > 20 ) {
      var base_price = 19.99;
    } else if (sliderValue > 10 ) {
      var base_price = 9.99;
    } else if (sliderValue > 5 ) {
      var base_price = 5.99;
    } else if (sliderValue > 0 ) {
      var base_price = 2.99;
    } else {
      var base_price = 2.99;
    };

  var numberPlants = base_price.val();

  document.addEventListener('turbolinks:load', () => {
    // Call your functions here, e.g:
    initDatepicker();
  });
  var Calc_days = $('#days');
  selectedDates
  var days = Calc_days.length.val();

  var Calc_balance = $('#balance');

  var balance = (numberPlants * days) + ;

  Calc_balance.val(balance);

};